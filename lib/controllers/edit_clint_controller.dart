
import 'package:get/get.dart';

class EditClientController extends GetxController{

  RxBool noMoreBooking = true.obs;

  void toggle() => noMoreBooking.value = noMoreBooking.value ? false : true;

}