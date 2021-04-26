import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';


class BusinessLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Your Location",
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
                  height: Get.height / 80,
                ),

                Center(
                  child: Text(
                    'Ali Talib', // it is the name coming from database
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontSize: Get.height / 40),
                  ),
                ),
                Center(
                  child: Text(
                    '455,544, Canada, 6554454', // it is the coming from database
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.height / 60,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: Get.height / 1.7,
                ),
//Location will be placed here

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
                SizedBox(
                  height: Get.height / 50,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Cant Find Address? ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: Get.height / 60,
                                fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Edit it here',
                                  style: TextStyle(
                                    color: Color(0xff38C1EE),
                                      fontSize: Get.height / 60,
                                      fontWeight: FontWeight.w600),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                       Get.offNamed('/UpdateAddress');
                                      // navigate to desired screen
                                    })
                            ]),
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
