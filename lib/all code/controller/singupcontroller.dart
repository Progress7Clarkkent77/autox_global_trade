import 'package:get/get.dart';

class SingUpController extends GetxController implements GetxService {
  bool isTextisHide = true;

  setTextIsTrue(bool value) {
    isTextisHide = value;
    update();
  }
}
