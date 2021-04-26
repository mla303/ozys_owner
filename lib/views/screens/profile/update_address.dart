import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';

class UpdateAddress extends StatelessWidget {
  TextEditingController streetAddressAndNumber = TextEditingController();
  TextEditingController apartmentNo = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController zipCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Update Your Address",
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
                Text('Street Address and Number'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: streetAddressAndNumber,
                  hintText2: 'Enter street address and number',
                  textInputType: TextInputType.text,
                ),
                Text('Apartment(optional)'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: apartmentNo,
                  hintText2: 'Enter apartment',
                  textInputType: TextInputType.number,
                ),
                Text('City'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: city,
                  hintText2: 'Enter city name',
                  textInputType: TextInputType.text,
                ),
                Text('Zip Code'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: zipCode,
                  hintText2: 'Enter zip code',
                  textInputType: TextInputType.text,
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
            )),
      ),
    );
  }
}
