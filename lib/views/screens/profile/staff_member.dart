import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/screens/profile/staff_member_details.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';

import 'add_staff_member.dart';


class StaffMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Staff Members",
        height: 70,
        action: Row(
          children: [
            GestureDetector(
                onTap: (){
                  Get.to(AddStaffMember());
                },
                child: Icon(Icons.add_circle)),
            SizedBox(width: 10,)
          ],
        ),
        leading: GestureDetector(

          onTap: (){
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,color: Colors.black,
          ),
        ),
      ),
      body: Container(
        width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [


            GestureDetector(
              // onTap: ()=> Get.to(ClientProfile()),
              child: Row(
                children: [
                  CustomMyAvatar(
                    width: 40.0,
                    height: 40.0,
                    data: ("assets/images/person.png"),
                    colr: mainColor,
                    bgColor: mainColor,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sohail Ahmad',
                        style:
                        heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Hair Expert',
                        style:
                        heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Get.to(StaffMemberDetails());
                      },
                      child: Icon(Icons.arrow_forward_ios)),

                ],
              ),
            ),
            SizedBox(height: 5,),
            Divider(),


          ],
        ),
      ),
    );
  }
}
