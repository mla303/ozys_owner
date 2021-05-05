import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/screens/profile/change_password.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';

class AccountDetails extends StatelessWidget {
  TextEditingController businessName = TextEditingController();
  TextEditingController streetNo = TextEditingController();
  TextEditingController apartmentNo = TextEditingController();
  TextEditingController aboutus = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Account Details",
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


                Center(
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      CustomMyAvatar(
                        width: 70.0,
                        height: 70.0,
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
                SizedBox(
                  height: Get.height/40,
                ),
                Text('Business Name'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: businessName,
                  hintText2: 'Straight Technology',
                  textInputType: TextInputType.text,// it will come from database, user can change it
                ),

                Text('Phone No'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: streetNo,
                  hintText2: 'XXXXXXXXXXXX',
                  textInputType: TextInputType.number,
                ),

                Text('Email Address'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: apartmentNo,
                  hintText2: 'email@gmail.com',
                  textInputType: TextInputType.emailAddress,

                ),
                Text('About Us'),
                MultiLineTextField(
                    txtController: aboutus,
                    hintText2: "",
                    textInputType: TextInputType.text),

                Text("Social Links",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Get.height/40,
                  fontWeight: FontWeight.bold
                ),),

                Divider(),
                Text('Facebook link'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: apartmentNo,
                  hintText2: 'facebook.com/luqman303gb',
                  textInputType: TextInputType.emailAddress,
                ),

                Text('WhatsApp number'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: apartmentNo,
                  hintText2: '+92 323 5077538',
                  textInputType: TextInputType.emailAddress,
                ),


                Text('Instagram ID'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: apartmentNo,
                  hintText2: 'www.instagram.com/mla303gb',
                  textInputType: TextInputType.emailAddress,

                ),

                Text('Twitter ID'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: apartmentNo,
                  hintText2: 'twitter.com/MLA303',
                  textInputType: TextInputType.emailAddress,

                ),

                SizedBox(
                  height: Get.height/10,
                ),
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
