import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/settings_controller.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';


import 'change_password.dart';
import 'country.dart';
import 'language.dart';


class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    SettingsController controller = Get.put(SettingsController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Settings",
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

                SizedBox(height: Get.height/20,),
                Text(
                  'Notifications',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: Get.height / 40),
                ),

                SizedBox(height: Get.height/80,),
                Divider(
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'App Notifications',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: Get.height / 50),
                    ),
                    Obx(
                          () => Switch(
                          activeColor: Colors.blue,
                          value: controller.appNotifications.value,
                          onChanged: (val) => controller.appToggle()),
                    ),
                  ],
                ),

                Divider(
                  color: Colors.grey,
                ),
                SizedBox(height: Get.height/80,),
                Text(
                  'Settings',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: Get.height / 40),
                ),
                SizedBox(height: Get.height/80,),
                Divider(
                  color: Colors.grey,
                ),
               SizedBox(height: Get.height/90,),
               Container(
                 height: Get.height/6,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     InkWell(
                   onTap: () {

                     Get.to(LanguagePage());

                   },
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         'Language(English)',
                         style: TextStyle(
                             fontWeight: FontWeight.w500,
                             color: Colors.black,
                             fontSize: Get.height / 50),
                       ),
                       Icon(
                         Icons.arrow_forward_ios,
                         size: Get.height / 45,
                         color: Colors.grey,
                       ),
                     ],
                   ),
                 ),
                   Divider(
                     color: Colors.grey,
                   ),
                   InkWell(
                     onTap: () {

                       Get.to(Country());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           'Country(Canada)',
                           style: TextStyle(
                               fontWeight: FontWeight.w500,
                               color: Colors.black,
                               fontSize: Get.height / 50),
                         ),
                         Icon(
                           Icons.arrow_forward_ios,
                           size: Get.height / 45,
                           color: Colors.grey,
                         ),
                       ],
                     ),
                   ),
                   Divider(
                     color: Colors.grey,
                   ),
                   InkWell(
                     onTap: () {

                       Get.to(ChangePassword());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           'Change Password',
                           style: TextStyle(
                               fontWeight: FontWeight.w500,
                               color: Colors.black,
                               fontSize: Get.height / 50),
                         ),
                         Icon(
                           Icons.arrow_forward_ios,
                           size: Get.height / 45,
                           color: Colors.grey,
                         ),
                       ],
                     ),
                   ),
                   Divider(
                     color: Colors.grey,
                   ),],),
               )

              ],
            )),
      ),
    );
  }
}
