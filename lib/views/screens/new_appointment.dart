import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/new_appointment_controller.dart';
import 'package:ozys_owner/views/screens/select_service.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';
import 'home/payment_confirmed.dart';
import 'profile/client_info.dart';

class NewAppointment extends StatelessWidget {
  TextEditingController name = TextEditingController();
TextEditingController internalNote = TextEditingController();
TextEditingController notifyToCient = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    NewApointmentController controller = Get.put(NewApointmentController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "New Appointment",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),


      ),
      body: SingleChildScrollView(
        child: Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: Get.height/30,),




                Text(
                  'Client Info',
                  style:
                  TextStyle(color: Colors.black, fontSize: Get.height / 40),
                ),
                SizedBox(height: Get.height/60,),
                Text('Full Name'),

                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: name,
                  hintText2: 'Enter Full Name',
                ),

                SizedBox(height: 10,),
                InkWell(
                  onTap: () {

                     Get.to(SelectService());

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select Service',
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

                    Get.to(ClientInfo());

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Client info',
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


                Text('Note for Client'),
                MultiLineTextField(
                    txtController: internalNote,
                    hintText2: "Type something",
                    textInputType: TextInputType.text),
                SizedBox(height: Get.height/14,),
                CustomButton(
                  lable: "Save",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: (){
                    Get.to(PaymentConfirmedPage());
                    Get.snackbar("New Appointment", "Saved");
                  },

                ),




              ],
            )),
      ),
    );
  }
}
