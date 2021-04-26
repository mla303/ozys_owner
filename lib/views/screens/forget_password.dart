import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/appBar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class ForgetPassword extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
          action: SizedBox(),
          context: context,
          height: 70,
          leading: Icon(
            Icons.arrow_back_ios,
          ),
          title: 'Forgot Password'),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          padding: EdgeInsets.only(left: 22, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),



              SizedBox(
                height: 12,
              ),
              Text('Email Address'),
              CustomTextField(
                obscuretext: false,
                txtController: controller,
                hintText2: 'Enter Email Address',
              ),
              SizedBox(
                height: 12,
              ),
              CustomButton(
                  lable: 'Reset Password',
                  onPress: () {},
                  color: primaryColor,
                  lableColor: Colors.white,
                  radius: 12,
                  borderColor: primaryColor),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
