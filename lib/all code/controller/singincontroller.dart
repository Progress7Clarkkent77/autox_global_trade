import 'package:get/get.dart';

class SingInController extends GetxController implements GetxService {
  bool istrue = true;
  bool isnumber = false;

  int numberselecter = 0;
  List numbers = [
    "In +91",
    "Us +1",
    "Vn +3",
    "Ru +7",
    "AF +93",
    "CAN +3",
  ];
  passwordis(bool value) {
    istrue = value;
    update();
  }

  numberselecter2(int value) {
    numberselecter = value;
    update();
  }

  isnumber2(bool value) {
    isnumber = value;
    update();
  }
}
