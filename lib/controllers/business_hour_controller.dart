

import 'package:get/get.dart';
import 'package:ozys_owner/models/business_hours_model.dart';

class BusinessHoursController extends GetxController{


  List<BusinessHoursModel> todos = [
    BusinessHoursModel(
      title: 'Monday',
      Starttime: '8:00',
      Endtime: '5:00',
    ),

    BusinessHoursModel(
      title: 'Tuesday',
      Starttime: '8:00',
      Endtime: '5:00',
    ),
    BusinessHoursModel(
      title: 'Wednesday',
      Starttime: '8:00',
      Endtime: '5:00',
    ),
    BusinessHoursModel(
      title: 'Thursday',
      Starttime: '8:00',
      Endtime: '5:00',
    ),
    BusinessHoursModel(
      title: 'Friday',
      Starttime: '8:00',
      Endtime: '5:00',
    ),
    BusinessHoursModel(
      title: 'Saturday',
      Starttime: '8:00',
      Endtime: '5:00',
    ),
    BusinessHoursModel(
      title: 'Sunday',
      Starttime: '8:00',
      Endtime: '5:00',
    ),
  ];




  RxBool monday = true.obs;
  RxBool tuesday = true.obs;
  RxBool wedn = true.obs;
  RxBool thus = true.obs;
  RxBool fri = true.obs;
  RxBool sat = true.obs;
  RxBool sun = false.obs;


  void toggle() => monday.value = monday.value ? false : true;
  void toggle1() => tuesday.value = tuesday.value ? false : true;
  void toggle2() => wedn.value = wedn.value ? false : true;
  void toggle3() => thus.value = thus.value ? false : true;
  void toggle4() => fri.value = fri.value ? false : true;
  void toggle5() => sat.value = sat.value ? false : true;
  void toggle6() => sun.value = sun.value ? false : true;




}