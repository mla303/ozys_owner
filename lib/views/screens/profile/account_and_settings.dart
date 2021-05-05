import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import '../privacy_n_policy.dart';
import 'account_details.dart';
import 'edit_address.dart';
import 'settings.dart';


class AccountAndSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Account And Settings",
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
                Container(
                  color: Colors.white,
                  // height: Get.height/4.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [InkWell(
                    onTap: () {

                      Get.to(AccountDetails());

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Account Details',
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
                    SizedBox(height: 10,),
                    Divider(
                      color: Colors.grey,
                    ),
                      SizedBox(height: 10,),
                    InkWell(
                      onTap: () {

                        Get.to(editAddress());

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Address',
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
          SizedBox(height: 10,),
                    Divider(
                      color: Colors.grey,
                    ),

                      SizedBox(height: 10,),
                    InkWell(
                      onTap: () {

                        Get.to(PrivacyPolicy());

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Privacy and Policy',
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
                      SizedBox(height: 10,),
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
