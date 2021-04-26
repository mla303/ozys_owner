import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'message_page_for_address.dart';

class BusinessDetails extends StatelessWidget {
  TextEditingController business = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "About You",
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
                    'About You',
                    style:
                    heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
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

                Text('Business Name'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: business,
                  hintText2: 'Enter Business Name',
                ),


                Text('Phone no.'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: phoneNo,
                  hintText2: 'Enter Phone no.',
                ),

                SizedBox(
                  height: Get.height/3,
                ),


                CustomButton(
                  lable: "Continue",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: (){
                    Get.to(MessagePage());
                  },
                ),




              ],
            )),
      ),
    );
  }
}
