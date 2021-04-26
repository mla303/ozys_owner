import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import '../../widgets/appBar.dart';
import 'your_address.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),


      ),
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

                    Image.asset(
                      'assets/images/logo.png',
                      height: Get.height/3,
                    ),


                    Text(
                      'Where Can Clients Find \nYou?',
                      style:
                          heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Let them know!',
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(
                      height: 120,
                    ),

                    Text(
                      'Complete your profile by adding \nyour workplace address',
                      textAlign: TextAlign.center,
                    ),

                  ],
                )),
          ),
          Container(
            width: Get.width/1.1,
            child: CustomButton(
            lable: "Got it!",
            borderColor: mainColor,
            color: mainColor,
            lableColor: Colors.white,
            radius: 10,
            onPress: (){
              Get.to(YourAddress());
            },
          ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
