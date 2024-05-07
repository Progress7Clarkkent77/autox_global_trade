import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const ID = "id";
  static const NAME = "name";
  static const PHOTO = "photo";
  static const BOT_STATUS = "botStatus";
  static const TOP_ACTIVE = "topActive";
  static const BOTTOM_ACTIVE = "bottomActive";
  static const MAIN_BALANCE = "mainBalance";
  static const INTEREST_BALANCE = "interestBalance";
  static const TOTAL_DEPOSIT = "totalDeposit";
  static const TOTAL_EARN = "totalEarn";
  static const TOTAL_INVEST = "totalInvest";
  static const TOTAL_PAYOUT = "totalPayout";
  static const TOTAL_REFERRAL_BONUS = "totalReferralBonus";
  static const TOTAL_TICKET = "totalTicket";
  static const ACTIVE_INVESTMENT = "activeInvestment";

  String _id;
  String _name;
  String _photo;
  String _botStatus;
  String _topActive;
  String _bottomActive;
  double _mainBalance;
  double _interestBalance;
  double _totalDeposit;
  double _totalEarn;
  double _totalInvest;
  double _totalPayout;
  double _totalReferralBonus;
  int _totalTicket;
  double _activeInvestment;

  // Constructor to initialize a new user with default values.
  UserModel.newUser()
      : _name = "",
        _photo = "",
        _id = "",
        _botStatus = "",
        _topActive = "",
        _bottomActive = "",
        _mainBalance = 0,
        _interestBalance = 0,
        _totalDeposit = 0,
        _totalEarn = 0,
        _totalInvest = 0,
        _totalPayout = 0,
        _totalReferralBonus = 0,
        _totalTicket = 0,
        _activeInvestment = 0;

  // Getters
  String get name => _name;
  String get photo => _photo;
  String get id => _id;
  String get botStatus => _botStatus;
  String get topActive => _topActive;
  String get bottomActive => _bottomActive;
  double get mainBalance => _mainBalance;
  double get interestBalance => _interestBalance;
  double get totalDeposit => _totalDeposit;
  double get totalEarn => _totalEarn;
  double get totalInvest => _totalInvest;
  double get totalPayout => _totalPayout;
  double get totalReferralBonus => _totalReferralBonus;
  int get totalTicket => _totalTicket;
  double get activeInvestment => _activeInvestment;

  UserModel.fromSnapshot(DocumentSnapshot snapshot)
      : _name = snapshot.get(NAME) ?? "",
        _photo = snapshot.get(PHOTO) ?? "",
        _id = snapshot.get(ID) ?? "",
        _botStatus = (snapshot.get(UserModel.BOT_STATUS) ?? "").toString(),
        _topActive = (snapshot.get(UserModel.TOP_ACTIVE) ?? "").toString(),
        _bottomActive =
            (snapshot.get(UserModel.BOTTOM_ACTIVE) ?? "").toString(),
        _mainBalance = (snapshot.get(MAIN_BALANCE) ?? 0).toDouble(),
        _interestBalance = (snapshot.get(INTEREST_BALANCE) ?? 0).toDouble(),
        _totalDeposit = (snapshot.get(TOTAL_DEPOSIT) ?? 0).toDouble(),
        _totalEarn = (snapshot.get(TOTAL_EARN) ?? 0).toDouble(),
        _totalInvest = (snapshot.get(TOTAL_INVEST) ?? 0).toDouble(),
        _totalPayout = (snapshot.get(TOTAL_PAYOUT) ?? 0).toDouble(),
        _totalReferralBonus =
            (snapshot.get(TOTAL_REFERRAL_BONUS) ?? 0).toDouble(),
        _totalTicket = snapshot.get(TOTAL_TICKET) ?? 0,
        _activeInvestment = (snapshot.get(ACTIVE_INVESTMENT) ?? 0).toDouble();

  // Method to convert the user data to a map for storing in Firestore.
  Map<String, dynamic> toMap() {
    return {
      NAME: _name,
      PHOTO: _photo,
      ID: _id,
      BOT_STATUS: _botStatus,
      TOP_ACTIVE: _topActive,
      BOTTOM_ACTIVE: _bottomActive,
      MAIN_BALANCE: _mainBalance,
      INTEREST_BALANCE: _interestBalance,
      TOTAL_DEPOSIT: _totalDeposit,
      TOTAL_EARN: _totalEarn,
      TOTAL_INVEST: _totalInvest,
      TOTAL_PAYOUT: _totalPayout,
      TOTAL_REFERRAL_BONUS: _totalReferralBonus,
      TOTAL_TICKET: _totalTicket,
      ACTIVE_INVESTMENT: _activeInvestment,
    };
  }
}
