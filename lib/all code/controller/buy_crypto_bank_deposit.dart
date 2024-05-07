import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/drawerpagess/buycrypto/bankdepositdstep/b_step1.dart';
import '../screens/drawerpagess/buycrypto/bankdepositdstep/b_step2.dart';
import '../screens/drawerpagess/buycrypto/bankdepositdstep/b_step3.dart';

class BuyCryptoBankDeposit extends GetxController implements GetxService {
  List step = [
    const BStep1(),
    const BStep2(),
    const BStep3(),
  ];

  bool isDrop1 = false;
  bool isDrop2 = false;

  int selectDrop1 = 0;
  int selectDrop2 = 0;

  setSelectDrop1(value) {
    selectDrop1 = value;
    update();
  }

  setSelectDrop2(value) {
    selectDrop2 = value;
    update();
  }

  setIsDrop1(value) {
    isDrop1 = value;
    update();
  }

  setIsDrop2(value) {
    isDrop2 = value;
    update();
  }

  List dropdown1 = [
    "IND",
    "USD",
    "TRC",
    "BNB",
  ];

  List dropdown2 = [
    "Bank(SWIFT)",
    "USD",
    "TRC",
    "BNB",
  ];

  int priceSelect = -1;

  setPriceSelect(value) {
    priceSelect = value;
    update();
  }

  ScrollController scrollController = ScrollController();

  TextEditingController priceController = TextEditingController();

  var selectIndex = [];

  int selectStep = 0;

  setSelectStep(value) {
    selectStep = value;
    update();
  }
}
