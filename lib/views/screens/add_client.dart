import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/visibilty_controller.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';

import 'home/client.dart';

class AddClient extends StatelessWidget {
  TextEditingController emailAddress = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();
  TextEditingController streetAddress = TextEditingController();
  TextEditingController appartmentNo = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController zipCode = TextEditingController();
  TextEditingController instructions = TextEditingController();
  TextEditingController note = TextEditingController();
  bool _visible = true;
  VisibiltyController controller = Get.put(VisibiltyController());
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: appBar(
          centerTitle: true,
          title: "Add Client",
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
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Stack(
                        fit: StackFit.loose,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.transparent,
                            //child: Image.asset("assets/images/imag.png"),

                            backgroundImage:
                                NetworkImage('https://via.placeholder.com/150'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 50,
                            child: Icon(
                              Icons.camera_alt,
                              size: Get.height / 35,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height / 50,
                    ),

                    Divider(),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Client Info',
                          style: TextStyle(
                              color: Colors.black, fontSize: Get.height / 40),
                        ),
                        GestureDetector(
                          onTap: ()=>controller.showClintInfo(),
                          child: Icon(
                            controller.clintinfo.value == false
                              ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_up

                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height / 50,
                    ),
                    GetBuilder<VisibiltyController>(
                      builder: (value) {
                      return   Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        visible: controller.clintinfo.value,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Full Name'),
                            CustomTextField(
                                enable: false,
                                obscuretext: false,
                                txtController: name,
                                hintText2: 'Enter Full Name'),
                            Text('Email Address'),
                            CustomTextField(
                              enable: false,
                              obscuretext: false,
                              txtController: emailAddress,
                              hintText2: 'Enter Email Address',
                              textInputType: TextInputType.emailAddress,
                            ),
                            Text('Phone No'),
                            CustomTextField(
                              enable: false,
                              obscuretext: false,
                              txtController: phoneNo,
                              hintText2: 'xxxxxxxx',
                              textInputType: TextInputType.number,
                            ),
                            Text('DOB(optional)'),
                            CustomTextField(
                              enable: true,
                              obscuretext: true,
                              txtController: dateOfBirth,
                              hintText2: 'Enter DOB',
                              textInputType: TextInputType.datetime,
                              ontap: () {
                                DatePicker.showDatePicker(
                                    context,
                                    showTitleActions: true,
                                    minTime: DateTime(1950, 3, 5),
                                    maxTime: DateTime(2022, 12, 31),
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
                            ),
                          ],
                        ),
                      );
                      },
                    ),

                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                              color: Colors.black, fontSize: Get.height / 40),
                        ),
                        GestureDetector(
                          onTap: ()=>controller.showAddress(),
                          child: Icon(
                              Icons.keyboard_arrow_down
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height / 50,
                    ),

    GetBuilder<VisibiltyController>(
    builder: (value) {
      return    Visibility(
        visible: controller.address.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Street address and Number'),
            CustomTextField(
              enable: false,
              obscuretext: true,
              txtController: streetAddress,
              hintText2: 'Enter street address amd number',
              textInputType: TextInputType.text,
            ),
            Text('Apartment(optional)'),
            CustomTextField(
              enable: false,
              obscuretext: true,
              txtController: appartmentNo,
              hintText2: 'Enter Apartment',
              textInputType: TextInputType.number,
            ),
            Text('City'),
            CustomTextField(
              enable: false,
              obscuretext: true,
              txtController: city,
              hintText2: 'Enter City',
              textInputType: TextInputType.text,
            ),
            Text('Zip Code'),
            CustomTextField(
              enable: false,
              obscuretext: true,
              txtController: zipCode,
              hintText2: 'Enter Zip code',
              textInputType: TextInputType.number,
            ),
          ],
        ),
      );
    }
    ),

                    SizedBox(
                      height: Get.height / 20,
                    ),
                    CustomButton(
                      lable: "Save",
                      borderColor: mainColor,
                      color: mainColor,
                      lableColor: Colors.white,
                      radius: 10,
                      onPress: () {
                        Get.back();
                      },
                    ),
                  ],
                ))));
  }
}





