import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      body: Column(
        children: [

          Expanded(
            flex: 13,
            child: Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      'assets/images/logo.png',
                      height: Get.height/3,
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Let\'s Get \n Your Business Online!',
                      style:
                          heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'We\'s need your e-maiil,passsword and \nphone number to setup you up.',
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(
                      height: 50,
                    ),

                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child:  Container(
              width: Get.width/1.1,
              child: CustomButton(
              lable: "Let\'s get started",
              borderColor: mainColor,
              color: mainColor,
              lableColor: Colors.white,
              radius: 10,
              onPress: (){
                Get.offNamed("/signupOption");
              },
          ),
            ),),
          SizedBox(height:30,)
        ],
      ),
    );
  }
}
