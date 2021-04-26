import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/screens/home/client_profile.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';
import '../notification.dart';
import '../payments_detail.dart';
import '../review_rating.dart';
import '../signin_page.dart';
import 'account_and_settings.dart';
import 'business_profile.dart';
import 'feedback_and_support.dart';
import 'statistics.dart';


class MainProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    // EditClientController controller = Get.put(EditClientController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Profile",
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
                Row(
                  children: [
                    Stack(
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
                    SizedBox(
                      width: Get.width / 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(ClientProfile());
                          },
                          child: Text(
                            'Ali talib',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: Get.height / 50),
                          ),
                        ), // name, it will come from database
                        Text(
                          'Business Owner',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: Get.height / 60),
                        ), // its designation, it will come from database
                      ],
                    )
                  ],
                ),
SizedBox(height: Get.height/20,),
               Container(
                 color: Colors.white,
                 height: Get.height/1.8,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                   InkWell(
                     onTap: () {

                       Get.to(AccountAndSettings());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.settings,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Account Setting',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     color: Colors.black,
                                     fontSize: Get.height / 50),
                               ),
                             ],
                           ),
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

                       Get.to(ReviewsPage());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.star,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Reviews and Ratings',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     color: Colors.black,
                                     fontSize: Get.height / 50),
                               ),
                             ],
                           ),
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

                         Get.to(NotificationPage());

                       },
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             child: Row(
                               children: [
                                 Icon(
                                   Icons.notifications,
                                   size: Get.height / 30,
                                   color: Colors.grey,
                                 ),
                                 SizedBox(
                                   width: Get.width / 30,
                                 ),
                                 Text(
                                   'Notification',
                                   style: TextStyle(
                                       fontWeight: FontWeight.w500,
                                       color: Colors.black,
                                       fontSize: Get.height / 50),
                                 ),
                               ],
                             ),
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

                       Get.to(PaymentDetailPage());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.payment,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Payment',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     color: Colors.black,
                                     fontSize: Get.height / 50),
                               ),
                             ],
                           ),
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

                       Get.to(BusinessProfile());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.business,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Business Profile',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     color: Colors.black,
                                     fontSize: Get.height / 50),
                               ),
                             ],
                           ),
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

                       Get.to(Statistics());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.stacked_bar_chart,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Statistics',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     color: Colors.black,
                                     fontSize: Get.height / 50),
                               ),
                             ],
                           ),
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

                       Get.to(FeedbackAndSupport());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.feedback,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Feedback and Support',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     color: Colors.black,
                                     fontSize: Get.height / 50),
                               ),
                             ],
                           ),
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
                     thickness: 0,

                     color: Colors.grey,
                   ),
                   InkWell(
                     onTap: () {

                       // Get.offNamed('/AccountAndSettings');

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.account_box_outlined,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'About OZYS',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     color: Colors.black,
                                     fontSize: Get.height / 50),
                               ),
                             ],
                           ),
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

                       Get.offAll(SignInPage());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.logout,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Logout',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     color: Colors.black,
                                     fontSize: Get.height / 50),
                               ),
                             ],
                           ),
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
                 ],),
               )
              ],
            )),
      ),
    );
  }
}
