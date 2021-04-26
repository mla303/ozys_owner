import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';


class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Statistics",
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
                SizedBox(height: Get.height/15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      child: Container(
                        color: Color(0xfff7f7f7),
                        width: Get.width/2.3,
                        height: Get.height/7,
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '22', // this is the number of appointments
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: Get.height/70,),
                            Text(
                              'Appointments',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        color: Color(0xfff7f7f7),
                        width: Get.width/2.3,
                        height: Get.height/7,
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '15', // this is the number of finished appointments
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: Get.height/70,),
                            Text(
                              'Finished',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      child: Container(
                        color: Color(0xfff7f7f7),
                        width: Get.width/2.3,
                        height: Get.height/7,
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\$12500', // this is the earning
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: Get.height/70,),
                            Text(
                              'Earnings',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        color: Color(0xfff7f7f7),
                        width: Get.width/2.3,
                        height: Get.height/7,
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '9', // this the number of appointments that is canceled
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: Get.height/70,),
                            Text(
                              'Cancelled',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
