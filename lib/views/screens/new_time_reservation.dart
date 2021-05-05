import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/bottom_nav_controller.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';

import 'select_employees.dart';


class NewTimeReservation extends StatelessWidget {
  TextEditingController dateAndTime = TextEditingController();
  TextEditingController reason = TextEditingController();
  BottomNavController controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "New Time Reservation",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            width: Get.width,
            // height: Get.height,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),

                Text('Date and Time'),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    DatePicker.showDateTimePicker(context,
                        showTitleActions: true,
                        minTime: DateTime(1950, 3, 5),
                        maxTime: DateTime(2021, 12, 31),
                        theme: DatePickerTheme(
                          headerColor: mainColor,
                          backgroundColor: Colors.white,
                          itemStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          doneStyle:
                          TextStyle(color: Colors.white, fontSize: 16),
                          cancelStyle:
                          TextStyle(color: Colors.white, fontSize: 16),
                        ), onChanged: (date) {
                          print('change $date in time zone ' +
                              date.timeZoneOffset.inHours.toString());
                        }, onConfirm: (date) {
                          print('confirm $date');
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Start',
                        style:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: Get.height / 50),
                      ),
                      Text(
                        'today; 11:00pm', // this is hardcorde value, it will come from dataBase
                        style:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: Get.height / 50),
                      ),
                    ],),
                ),
                SizedBox(height: 10,),
                Divider(color: Colors.grey,),
                SizedBox(height: 10,),
                //on click open a timer and date picker
                GestureDetector(
                  onTap: (){
                    DatePicker.showDateTimePicker(context,
                        showTitleActions: true,
                        minTime: DateTime(1950, 3, 5),
                        maxTime: DateTime(2021, 12, 31),
                        theme: DatePickerTheme(
                          headerColor: mainColor,
                          backgroundColor: Colors.white,
                          itemStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          doneStyle:
                          TextStyle(color: Colors.white, fontSize: 16),
                          cancelStyle:
                          TextStyle(color: Colors.white, fontSize: 16),
                        ), onChanged: (date) {
                          print('change $date in time zone ' +
                              date.timeZoneOffset.inHours.toString());
                        }, onConfirm: (date) {
                          print('confirm $date');
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'End',
                        style:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: Get.height / 50),
                      ),
                      Text(
                        'today; 12:00pm', // this is hardcorde value, it will come from dataBase
                        style:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: Get.height / 50),
                      ),
                    ],),
                ),
                SizedBox(height: 10,),
                Divider(color: Colors.grey,),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () {

                    Get.to(SelectEmployees());

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select Employeee',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: Get.height / 50),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: Get.height / 45,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Divider(color: Colors.grey,),
                SizedBox(height: 10,),
                Text('Reason'),
                MultiLineTextField(
                  txtController: reason,
                  hintText2: '',
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: Get.height/4,
                ),
                CustomButton(
                  lable: "Save",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: () {
                    Get.offAndToNamed("/CalendarAppoinmentPage");
                    Get.snackbar("New Time Reservation", "Saved");
                  },
                ),

              ],
            )),
      ),
    );
  }
}
