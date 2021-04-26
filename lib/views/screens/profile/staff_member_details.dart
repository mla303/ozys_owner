import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';



class StaffMemberDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    TextEditingController name = TextEditingController();
    TextEditingController phoneNo = TextEditingController();
    TextEditingController spacielity = TextEditingController();
    TextEditingController experience = TextEditingController();

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Staff Member Details",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: Container(
        width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child:  Stack(
                fit: StackFit.loose,
                children: [
                  CustomMyAvatar(
                    width: 60.0,
                    height: 60.0,
                    data: ("assets/images/person.png"),
                    colr: mainColor,
                    bgColor: mainColor,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 40,
                    child: Icon(
                      Icons.camera_alt,
                      size: Get.height / 40,
                      color: mainColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height/30,),
            Text('Name'),
            CustomTextField(
              enable: false,
              obscuretext: false,
              txtController: name,
              hintText2: 'Ali Talib',
              textInputType: TextInputType.text,// it will come from database, user can change it
            ),


            Text('Phone No'),
            CustomTextField(
              enable: false,
              obscuretext: false,
              txtController: phoneNo,
              hintText2: '03254588412',
              textInputType: TextInputType.number,

            ),
            Text('Spacielity'),
            CustomTextField(
              enable: false,
              obscuretext: false,
              txtController: spacielity,
              hintText2: 'Hair salon',
              textInputType: TextInputType.text,
            ),
            Text('Experience'),
            CustomTextField(
              enable: false,
              obscuretext: false,
              txtController: experience,
              hintText2: '3 years',
              textInputType: TextInputType.text,
            ),
            CustomButton(
              lable: "Save",
              borderColor: mainColor,
              color: mainColor,
              lableColor: Colors.white,
              radius: 10,
              onPress: (){
                Get.back();
              },),
            SizedBox(height: Get.height/80,),
            CustomButton(
              lable: "Delete Member",
              borderColor: Colors.grey.withOpacity(0.2),
              color: Colors.white,
              lableColor: Colors.grey,
              radius: 10,
              onPress: () {},
            ),

          ],
        ),
      ),
    );
  }
}
