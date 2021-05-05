import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/appBar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/social_button.dart';
import 'forget_password.dart';

class SignInPage extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();


  // bool _obscureText = true;
  // void _toggle(){
  //   setState((){
  //     _obscureText = !_obscureText;
  //   });
  // }
  //
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
          title: 'Sign in'),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          padding: EdgeInsets.only(left: 22, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height/50,
              ),
              Text('Email Address'),
              CustomTextField(
                enable: false,
                obscuretext: false,
                txtController: email,
                hintText2: 'Enter Email Address',
              ),
              Text('Password'),
              CustomTextField(
                enable: false,
                iconButton: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  iconSize: 18,
                  color: Colors.grey,
                  // onPressed: _toggle,
                ),
                obscuretext: true,
                txtController: pass,
                hintText2: 'Enter Password',
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(() => ForgetPassword());
                      },
                      child: Text('Forget Password? '))
                ],
              ),
              SizedBox(
                height: Get.height/60,
              ),
              CustomButton(
                  lable: 'Login',
                  lableColor: Colors.white,
                  onPress: () {
                    Get.offNamed("/BottomNavBar");
                  },
                  color: primaryColor,

                  radius: 12,
                  borderColor: primaryColor),
              SizedBox(
                height: Get.height/60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Expanded(child: Divider(color: Color(0xffEEEEEE),
                    thickness: 2,)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Login With',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Divider(color: Color(0xffEEEEEE),
                    thickness: 2,)),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 22),
                child: SocialButton(
                    lable: 'Continue With Facebook'.toUpperCase(),
                    onPress: () {},
                    iconPath: 'assets/images/facebook.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 22),
                child: SocialButton(
                    lable: 'Continue With Google'.toUpperCase(),
                    onPress: () {},
                    iconPath: 'assets/images/google.png'),
              ),
              SizedBox(
                height: Get.height/20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
    children: [
                        TextSpan(
                            text: 'Don\'t have an account ',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: 'Signup now ',
                            style: TextStyle(color: primaryColor, height: 1.5,fontWeight: FontWeight.bold),
                recognizer: new TapGestureRecognizer()
              ..onTap = () {
                Get.offNamed("/signupOption");
              }),
                      ])),
                ],
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
