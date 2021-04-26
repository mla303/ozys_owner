import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';

class ClientInfo extends StatelessWidget {
  TextEditingController businessName = TextEditingController();
  TextEditingController streetNo = TextEditingController();
  TextEditingController apartmentNo = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController zipCode = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Client Address",
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
                  height: Get.height/30,
                ),

                Text('Street address and number'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: businessName,
                  hintText2: 'Enter Street address and number',
                  textInputType: TextInputType.text,// it will come from database, user can change it
                ),


                Text('Apartment No (optional)'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: apartmentNo,
                  hintText2: '25',
                  textInputType: TextInputType.number,

                ),
                Text('City'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: city,
                  hintText2: 'Islamabad',
                  textInputType: TextInputType.text,
                ),
                Text('Zip Code'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: city,
                  hintText2: 'Islamabad',
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
                  onPress: (){
                    Get.back();
                  },),




              ],
            )),
      ),
    );
  }
}
