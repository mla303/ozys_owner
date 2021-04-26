
import 'package:get/get.dart';

class SettingsController extends GetxController{

  RxBool showNotifications = true.obs;

  void toggle() => showNotifications.value = showNotifications.value ? false : true;

  RxBool appNotifications = true.obs;

  void appToggle() => appNotifications.value = appNotifications.value ? false : true;

}