import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/drawerpagess/buycrypto/creditstep/step_1.dart';
import '../screens/drawerpagess/buycrypto/creditstep/step_2.dart';
import '../screens/drawerpagess/buycrypto/creditstep/step_3.dart';
import '../screens/drawerpagess/buycrypto/creditstep/step_4.dart';

class BuyCryptoCreditCard extends GetxController implements GetxService {
  List step = [
    const Step1(),
    const Step2(),
    const Step3(),
    const Step4(),
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
