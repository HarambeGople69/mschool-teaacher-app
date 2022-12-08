import 'package:get/get.dart';

class UploadController extends GetxController {
  var index = 0.obs;
  changeIndex(int value) {
    index.value = value;
  }
}
