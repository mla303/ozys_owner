
import 'package:get/get.dart';

class NewApointmentController extends GetxController{

  RxBool walkInClient = true.obs;

  void toggle() => walkInClient.value = walkInClient.value ? false : true;

}