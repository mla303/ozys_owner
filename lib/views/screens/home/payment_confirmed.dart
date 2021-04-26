import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';
import 'package:readmore/readmore.dart';

import '../new_sale.dart';

class PaymentConfirmedPage extends StatelessWidget {

  TextEditingController note = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;
    final heding = Theme.of(context).textTheme.headline1;

    var data2 = 'Hair Cut';
    var data3 = 'Jacobs Barber Studio,Jacobs Barber Studio.Jacobs Barber Studio.Jacobs Barber Studio.Jacobs Barber Studio.Jacobs Barber Studio.';



    String from = "8:00am";
    String to = "5:00pm";
    var dob = '18 March, 1997';
    var address = 'Islamabad';


    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Confirmed",
        height: 50,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios_outlined,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(child: Text('ID:429348239')),

              SizedBox(height: 10,),

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
              SizedBox(height: 25,),

              Text(
                'Services',
                style:
                heding.copyWith(fontSize: Get.height/40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),


              Divider(),

              AppoimentTileOne(
                bgClr: Colors.green,
                data2: data2, data3: data3, from: from,
              to: to,),

              SizedBox(height: Get.height/2,),


              CustomButton(
                lable: "Checkout",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: (){
                  Get.to(NewSale());
                },
              ),
              SizedBox(height: 10,),

            ],
          ),
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
    @required this.from,
    @required this.to,

  }) : super(key: key);

  final String data;
  final String data2;
  final String data3;
  final String data4;


  final String from;
  final String to;

  final Color bgClr;



  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final mediumFont = Theme.of(context).textTheme.bodyText2;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("\$12",style: TextStyle(color: Colors.black.withOpacity(0.9),fontSize: 20,fontWeight: FontWeight.bold),),
            Text("2:25AM - 3:00AM,  3/3/21",style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 14,fontWeight: FontWeight.w300),),
          ],
        ),
        Text("Hair cut",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w300),),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: Get.width/1.2,
              height: Get.height/15,
              // color: Colors.yellow,
              child: ReadMoreText(
                data3,
                trimLines: 2,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                style: mediumFont.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8D8D8D)),
                moreStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: mainColor,),
                lessStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

          ],
        ),

      ],
    );
  }
}
