import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_circle.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';

import '../edit_client.dart';
import 'client_appointments.dart';
import 'client_payment_history.dart';

class ClientProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;
    final heding = Theme.of(context).textTheme.headline1;




    var phone = '+92 303 2525257';
    var email = 'sohailahmad68122@gmail.com';
    var dob = '18 March, 1997';
    var address = 'Islamabad';



    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Owner Profile",
        height: 70,
        action: Center(child: Row(
          children: [
            GestureDetector(
                onTap: (){
                  Get.to(EditClient());
                },
                child: Text("Edit",style: TextStyle(fontWeight: FontWeight.w200),)),
            SizedBox(width: 10,)
          ],
        )),
        leading: Icon(
          Icons.arrow_back_ios_outlined,
        ),
      ),
      body: Container(
        width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Row(
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
                      'Ali Talib',
                      style:
                      heding.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '$address | $dob',
                      style:
                      heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(height: 5,),



            Divider(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '0',
                        style:
                        heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Completed',
                        style:
                        heding.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Text(
                        '0',
                        style:
                        heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Upcoming',
                        style:
                        heding.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Text(
                        '0',
                        style:
                        heding.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Cancelled',
                        style:
                        heding.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),


                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text(
                  'Total revenues from client:  ',
                  style:
                  heding.copyWith(fontSize: 12, fontWeight: FontWeight.w100),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '\$0.00',
                  style:
                  heding.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Divider(
              thickness: 1,
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  'Appointments',
                  style:
                  heding.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                Spacer(),
                GestureDetector(
                  onTap: (){
                    Get.to(clientAppointmentPage());
                  },
                  child: Text(
                    'see all',
                    style:
                    heding.copyWith(fontSize: 14, fontWeight: FontWeight.w200),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,size: 14,color: Colors.grey,)

              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),

            Row(
              children: [
                Text(
                  'Payment History',
                  style:
                  heding.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                Spacer(),
                GestureDetector(
                  onTap: (){
                    Get.to(ClientPaymentHistoryPage());
                  },
                  child: Text(
                    'see all',
                    style:
                    heding.copyWith(fontSize: 14, fontWeight: FontWeight.w200),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,size: 14,color: Colors.grey,)

              ],
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),

            Text(
              'Contact with',
              style:
              heding.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                // SizedBox(width: 30,),
                SizedBox(width: 10,),
                CustomCircleAvator(
                  width: 30.0,
                  height: 30.0,
                  colr: mainColor,
                  bgColor: Colors.white,
                  data: Icon(Icons.phone,color: mainColor,size: 16,),
                ),
                SizedBox(width: 10,),
                CustomCircleAvator(
                  width: 30.0,
                  height: 30.0,
                  colr: mainColor,
                  bgColor: Colors.white,
                  data: Icon(Icons.email,color: mainColor,size: 16,),
                ),
                SizedBox(width: 10,),
                CustomCircleAvator(
                  width: 30.0,
                  height: 30.0,
                  colr: mainColor,
                  bgColor: Colors.white,
                  data: Icon(Icons.messenger_outline,color: mainColor,size: 16,),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}

class AppoimentTileOne extends StatelessWidget {
  const AppoimentTileOne({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
    @required this.bgClr,

  }) : super(key: key);

  final String data;
  final String data2;
  final String data3;
  final String data4;

  final Color bgClr;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 80,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 12, right: 12),
      padding: EdgeInsets.only(left: 12, right: 12, top: 8,bottom: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xffE2E0E0))),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: bgClr),
                child: Center(
                  child: Text(
                    data,
                    style: mediumFont.copyWith(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                data2,
                style: mediumFont.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),

              Text(
                data3,
                style: mediumFont.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff272833)),
              ),
              SizedBox(
                height: 4,
              ),
            ],
          ),
          Spacer(),
          VerticalDivider(),
          SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text(
                'April',
                style: mediumFont.copyWith(fontSize: 10),
              ),
              SizedBox(
                height: 0,
              ),
              Text(
                '8',
                style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
              ),
              SizedBox(
                height: 0,
              ),
              Text(
                '1:00 PM',
                style: mediumFont.copyWith(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
