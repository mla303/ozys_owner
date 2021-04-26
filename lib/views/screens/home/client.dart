import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';

import '../add_client.dart';
import '../client_filters.dart';
import 'client_profile.dart';

class ClientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Client",
        height: 70,
        action: Row(
          children: [
            GestureDetector(
                onTap: (){
                  Get.to(AddClient());
                },
                child: Icon(Icons.add_circle)),
            SizedBox(width: 10,)
          ],
        ),
        leading: GestureDetector(

          onTap: (){
            Get.to(ClientFilters());
          },
          child: Icon(
            Icons.filter_alt,color: Colors.grey,
          ),
        ),
      ),
      body: Container(
        width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [


            GestureDetector(
             onTap: ()=> Get.to(ClientProfile()),
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
                        '+92 303 2525257',
                        style:
                        heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

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
