
import 'package:get/get.dart';

class AddStaffController extends GetxController{

  RxBool addstaff = true.obs;

  void toggle() => addstaff.value = addstaff.value ? false : true;

}