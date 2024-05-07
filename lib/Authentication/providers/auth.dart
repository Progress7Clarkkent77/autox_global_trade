import 'dart:async';
import 'package:autox_global_trade/Authentication/helper/constants.dart';
import 'package:autox_global_trade/Authentication/models/user.dart';
import 'package:autox_global_trade/Authentication/services/user.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:shared_preferences/shared_preferences.dart';

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated }

class AuthProvider with ChangeNotifier {
  User? _user;
  Status _status = Status.Uninitialized;
  UserServices _userServices = UserServices();

  UserModel? _userModel;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  // Getters
  UserModel? get userModel => _userModel;
  Status get status => _status;
  User? get user => _user;

  AuthProvider.init() {
    _fireSetUp();
  }

  _fireSetUp() async {
    await initialization.then((value) {
      auth
          .authStateChanges()
          .listen(_onStateChanged as void Function(User? event)?);
    });
  }

  Future<Map<String, dynamic>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await auth.signInWithCredential(credential).then((userCredentials) async {
        _user = userCredentials.user!;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString("id", _user!.uid);
        if (!await _userServices.doesUserExist(_user!.uid)) {
          _userServices.createUser(
              id: _user!.uid, name: _user!.displayName, photo: _user!.photoURL);
          await initializeUserModel();
        } else {
          await initializeUserModel();
        }
      });
      return {'success': true, 'message': 'success'};
    } catch (e) {
      notifyListeners();
      return {'success': false, 'message': e.toString()};
    }
  }

  Future<bool> initializeUserModel() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? _userId = preferences.getString('id');
    _userModel = await _userServices.getUserById(_userId!);
    notifyListeners();
    if (_userModel == null) {
      return false;
    } else {
      return true;
    }
  }

  // Future<void> updatePointsAndRank(int pointsToAdd) async {
  //   if (_userModel == null) {
  //     return;
  //   }

  //   // Update user's points
  //   _userModel!.updateUserPoints(pointsToAdd);

  //   // Update user's rank in Firestore
  //   await _userServices.updateUserRank(_userModel!.id, _userModel!.rank);

  //   notifyListeners();
  // }

  Future signOut() async {
    auth.signOut();
    _status = Status.Unauthenticated;
    notifyListeners();
    return Future.delayed(Duration.zero);
  }

  _onStateChanged(User firebaseUser) async {
    // ignore: unnecessary_null_comparison
    if (firebaseUser == null) {
      _status = Status.Unauthenticated;
      notifyListeners();
    } else {
      _user = firebaseUser;
      initializeUserModel();
      Future.delayed(const Duration(seconds: 2), () {
        _status = Status.Authenticated;
        notifyListeners();
      });
    }
  }
}
