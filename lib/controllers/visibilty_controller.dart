import 'package:get/get.dart';

class VisibiltyController extends GetxController{


  RxBool clintinfo = false.obs;
  RxBool address = false.obs;

  void showClintInfo() {
    clintinfo.value = clintinfo.value
        ? false
        : true;
    print(clintinfo.value);
    update();
  }

  void showAddress() {
    address.value = address.value
        ? false
        : true;
    print(address.value);
    update();
  }

}