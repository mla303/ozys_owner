import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/screens/profile/staff_member.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import '../business_location.dart';
import 'account_and_settings.dart';
import 'categories_update.dart';
import 'health_and_safity_rules.dart';
import 'opening_hours_update.dart';
import 'portfolio.dart';
import 'services_category.dart';
import 'workplace_photos.dart';


class BusinessProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Business Profile",
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
                        Text(
                          'Ali talib',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: Get.height / 50),
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
                 // height: Get.height/2.5,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                 Icons.info,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Business Info',
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
                     SizedBox(height: 10,),
                   Divider(
                     color: Colors.grey,
                   ),
                     SizedBox(height: 10,),
                     InkWell(
                       onTap: () {

                         Get.to(HealthAndSafetyRules());

                       },
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             child: Row(
                               children: [
                                 Icon(
                                   Icons.healing,
                                   size: Get.height / 30,
                                   color: Colors.grey,
                                 ),
                                 SizedBox(
                                   width: Get.width / 30,
                                 ),
                                 Text(
                                   'Health and Safety rules',
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
                     SizedBox(height: 10,),
                     Divider(
                       color: Colors.grey,
                     ),
                     SizedBox(height: 10,),
                   InkWell(

                     onTap: () {

                       Get.to(BusinessLocation());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.location_on_outlined,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Business Location',
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
                     SizedBox(height: 10,),
                   Divider(
                     color: Colors.grey,
                   ),
                     SizedBox(height: 10,),
                   InkWell(

                     onTap: () {

                       Get.to(CategoriesUpdate());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.category,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Categories ',
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
                     SizedBox(height: 10,),
                   Divider(
                     color: Colors.grey,
                   ),
                     SizedBox(height: 10,),
                   InkWell(

                     onTap: () {

                       Get.to(portfolio());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.camera_alt_outlined,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Portfolio',
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
                     SizedBox(height: 10,),
                   Divider(
                     color: Colors.grey,
                   ),
                     SizedBox(height: 10,),
                     InkWell(

                       onTap: () {

                         Get.to(WorkPlacePhotos());

                       },
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             child: Row(
                               children: [
                                 Icon(
                                   Icons.camera_alt_outlined,
                                   size: Get.height / 30,
                                   color: Colors.grey,
                                 ),
                                 SizedBox(
                                   width: Get.width / 30,
                                 ),
                                 Text(
                                   'Workplace Photos',
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

                     SizedBox(height: 10,),
                     Divider(
                       color: Colors.grey,
                     ),
                     SizedBox(height: 10,),








                   InkWell(
                     onTap: () {

                       Get.to(OpeningHours());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.more_time,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Opening Hours',
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
                     SizedBox(height: 10,),
                   Divider(
                     color: Colors.grey,
                   ),
                     SizedBox(height: 10,),
                   InkWell(
                     onTap: () {

                       Get.to(StaffMember());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.people_alt,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Staff Members',
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
                     SizedBox(height: 10,),
                   Divider(
                     color: Colors.grey,
                   ),
                     SizedBox(height: 10,),
                   InkWell(
                     onTap: () {

                       Get.to(ServicesAndCategoryPage());

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           child: Row(
                             children: [
                               Icon(
                                 Icons.home_repair_service,
                                 size: Get.height / 30,
                                 color: Colors.grey,
                               ),
                               SizedBox(
                                 width: Get.width / 30,
                               ),
                               Text(
                                 'Services',
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
                     SizedBox(height: 10,),
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
