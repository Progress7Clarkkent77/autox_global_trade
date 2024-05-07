import 'package:autox_global_trade/Authentication/helper/constants.dart';
import 'package:autox_global_trade/Authentication/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserServices {
  String collection = "users";

  void createUser({
    String? id,
    String? name,
    String? photo,
  }) {
    firebaseFirestore.collection(collection).doc(id).set({
      "name": name,
      "id": id,
      "photo": photo,
      "botStatus": "",
      "topActive": "",
      "bottomActive": "",
      "mainBalance": 0,
      "interestBalance": 0,
      "totalDeposit": 0,
      "totalEarn": 0,
      "totalInvest": 0,
      "totalPayout": 0,
      "totalReferralBonus": 0,
      "totalTicket": 0,
      "activeInvestment": 0,
    });
  }

  Future<UserModel> getUserById(String id) =>
      firebaseFirestore.collection(collection).doc(id).get().then((doc) {
        return UserModel.fromSnapshot(doc);
      });

  Future<bool> doesUserExist(String id) async => firebaseFirestore
      .collection(collection)
      .doc(id)
      .get()
      .then((value) => value.exists);

  Future<List<UserModel>> getAll() async =>
      firebaseFirestore.collection(collection).get().then((result) {
        List<UserModel> users = [];
        for (DocumentSnapshot user in result.docs) {
          users.add(UserModel.fromSnapshot(user));
        }
        return users;
      });
}
