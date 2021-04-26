import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/edit_clint_controller.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';


class AddPaymentCard extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();
  TextEditingController streetAddress = TextEditingController();
  TextEditingController appartmentNo = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController zipCode = TextEditingController();
  TextEditingController instructions = TextEditingController();
  String comment = 'He is special character';
  String clientName = 'Ali talib';

  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;

    EditClientController controller = Get.put(EditClientController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Add Payment Card",
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
                  height: Get.height / 50,
                ),
                Text(
                  'Add Your Payment Card',
                  style:
                      TextStyle(color: Colors.black, fontSize: Get.height / 40),
                ),
                SizedBox(
                  height: Get.height / 40,
                ),
                Text('Full Name'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: name,
                  hintText2: 'Enter Full Name',
                ),
                Text('Card Number'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: phoneNo,
                  hintText2: 'XXXXXXXXXXX',
                  textInputType: TextInputType.number,
                ),

                Text('Expires'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: streetAddress,
                  hintText2: '12/25',
                  textInputType: TextInputType.text,
                ),
                Text('CVV/CVC'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: appartmentNo,
                  hintText2: '***',
                  textInputType: TextInputType.number,
                ),

                SizedBox(
                  height: Get.height / 20,
                ),


                CustomButton(
                  lable: "Save card",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: () {
                    Get.back();
                    Get.snackbar("Card Added", "added");
                  },
                ),

              ],
            )),
      ),
    );
  }
}
