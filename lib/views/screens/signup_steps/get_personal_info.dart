import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'business_detail.dart';

class GetPersonalInfo extends StatelessWidget {
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController passowrd = TextEditingController();
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
        leading: Icon(
          Icons.arrow_back_ios
        )


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
                Text(
                  'Let\'s Get Your Business Online!',
                  style:
                  heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'First, we will create your OZYS profile \nwith your details and address.',
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Text('Full Name',),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: fullname,
                  hintText2: 'Enter Full Name',
                ),

                Text('Email address'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: email,
                  hintText2: 'Enter email address',
                ),

                Text('Phone no.'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: phoneNo,
                  hintText2: 'Enter Phone no.',
                ),
                Text('Password'),
                CustomTextField(
                  enable: false,
                  iconButton: IconButton(
                    icon: Icon(Icons.remove_red_eye_outlined,size: 18,),
                  ),
                  obscuretext: true,
                  txtController: passowrd,
                  hintText2: 'Enter Password',
                ),


                CustomButton(
                  lable: "Create Business Account",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: (){
                    Get.to(BusinessDetails());
                  },

                ),


                SizedBox(
                  height: 10,
                ),
                Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'By Creating an Account, You agree to our',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: '\nTerms of Service ',
                            style: TextStyle(color: primary, height: 1.5)),
                        TextSpan(
                            text: 'and ', style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(color: primary)),
                      ])),
                ),

              ],
            )),
      ),
    );
  }
}
