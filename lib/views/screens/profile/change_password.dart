import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';

class ChangePassword extends StatelessWidget {
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController reEnterPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Change Password",
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
                  height: Get.height/50,
                ),

                Text('Old Password'),
                CustomTextField(
                  enable: false,
                  obscuretext: true,
                  txtController: oldPassword,
                  hintText2: 'Enter Old Password',
                  textInputType: TextInputType.text,// it will come from database, user can change it
                ),

                Text('New Password'),
                CustomTextField(
                  enable: false,
                  obscuretext: true,
                  txtController: newPassword,
                  hintText2: 'New Password',
                  textInputType: TextInputType.number,
                ),

                Text('Re-Enter Password'),
                CustomTextField(
                  enable: false,
                  obscuretext: true,
                  txtController: reEnterPassword,
                  hintText2: 'Re-Enter Password',
                  textInputType: TextInputType.number,

                ),

                // SizedBox(
                //   height: Get.height/2.5,
                // ),

                CustomButton(
                  lable: "Save",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: (){
                    Get.back();
                  },

                ),




              ],
            )),
      ),
    );
  }
}
