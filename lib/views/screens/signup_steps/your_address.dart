import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/screens/signup_steps/your_location.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';


import '../../widgets/custom_icon_text_field.dart';
import 'your_address2.dart';

class YourAddress extends StatelessWidget {
  TextEditingController business = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Your address",
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
                  child: Text(
                    'where can you client find you?',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                CustomIconTextField(
                  txtController: controller,
                  hintText2: 'Search Somethings',
                  suffixicon: SizedBox(),
                  prefixIcon: Icon(
                    Icons.search,

                    color: Colors.grey,
                  ),
                ),



                SizedBox(
                  height: Get.height/2,
                ),


                CustomButton(
                  lable: "Continue",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: (){
                    Get.to(YourLocation());
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: RichText(
                      textAlign: TextAlign.center,

                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Can\'t Find address? ',
                            style: TextStyle(color: Colors.black,
                              fontFamily: 'WorkSans', )),
                        TextSpan(
                            text: 'Add it here ',
                            style: TextStyle(color: primary, height: 1.5,fontFamily: 'WorkSans',),
    recognizer: new TapGestureRecognizer()
    ..onTap = () {
      Get.to(() => YourAddress2());
    }),

                      ])),
                ),





              ],
            )),
      ),
    );
  }
}
