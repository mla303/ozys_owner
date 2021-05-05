import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/social_button.dart';
import 'get_personal_info.dart';

class SignUpOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Setup your business",
        height: 70,
        action: SizedBox(),


      ),
      body: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

SizedBox(height: Get.height/50,),

              Text(
                'Start Your Setup',
                style:
                heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Get.height/70,
              ),
              Text(
                'No Credit card. No Commitment.\nIt takes only 2 minutes',
                textAlign: TextAlign.center,
              ),



              SizedBox(
                height: Get.height/10,
              ),

              CustomButton(
                // buttonHeight: 20,
                lable: "Sign in with email",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: (){
                  Get.to(GetPersonalInfo());
                },

              ),
              SizedBox(
                height: 40,
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
                    'Sign up With',
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

              SizedBox(
                height: 40,
              ),

              SocialButton(
                lable: "CONTINUE WITH FACEBOOK",
                iconPath: 'assets/images/facebook.png',

              ),
              SizedBox(
                height: 10,
              ),
              SocialButton(
                lable: "CONTINUE WITH GOOGLE",
                iconPath: 'assets/images/google.png',

              ),

            ],
          )),
    );
  }
}
