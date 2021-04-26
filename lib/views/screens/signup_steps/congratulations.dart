import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';


class CongratulationPage extends StatelessWidget {
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
                      'Congratulations!',
                      style:
                          heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'You Are All Set!',
                      style:
                          heding.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Your Profile is now available for \n clients,you can invite them to book \n with you online',
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
              lable: "Start using OZYS",
              borderColor: mainColor,
              color: mainColor,
              lableColor: Colors.white,
              radius: 10,
              onPress: (){
                Get.offNamed("/BottomNavBar");
              },
          ),
            ),),
          SizedBox(height:30,)
        ],
      ),
    );
  }
}
