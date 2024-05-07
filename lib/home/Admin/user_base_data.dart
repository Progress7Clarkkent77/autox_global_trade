import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  final double mainBalance;
  final double interestBalance;
  final double totalDeposit;
  final double totalEarn;
  final double totalInvest;
  final double totalPayout;
  final double totalReferralBonus;
  final int totalTicket;
  final double activeInvestment;

  UserData({
    required this.mainBalance,
    required this.interestBalance,
    required this.totalDeposit,
    required this.totalEarn,
    required this.totalInvest,
    required this.totalPayout,
    required this.totalReferralBonus,
    required this.totalTicket,
    required this.activeInvestment,
  });

  // Convert user data to a map
  Map<String, dynamic> toMap() {
    return {
      'mainBalance': mainBalance,
      'interestBalance': interestBalance,
      'totalDeposit': totalDeposit,
      'totalEarn': totalEarn,
      'totalInvest': totalInvest,
      'totalPayout': totalPayout,
      'totalReferralBonus': totalReferralBonus,
      'totalTicket': totalTicket,
      'activeInvestment': activeInvestment,
    };
  }
}

class FirestoreService {
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> addUser(String userId, UserData userData) async {
    await _usersCollection.doc(userId).set(userData.toMap());
  }

  Future<UserData?> getUser(String userId) async {
    var userDoc = _usersCollection.doc(userId);
    var snapshot = await userDoc.get();

    if (snapshot.exists) {
      return UserData(
        mainBalance: snapshot['mainBalance'],
        interestBalance: snapshot['interestBalance'],
        totalDeposit: snapshot['totalDeposit'],
        totalEarn: snapshot['totalEarn'],
        totalInvest: snapshot['totalInvest'],
        totalPayout: snapshot['totalPayout'],
        totalReferralBonus: snapshot['totalReferralBonus'],
        totalTicket: snapshot['totalTicket'],
        activeInvestment: snapshot['activeInvestment'],
      );
    } else {
      return null;
    }
  }
}
