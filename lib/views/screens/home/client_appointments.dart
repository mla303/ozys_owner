import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:ozys_owner/controllers/custom_dialog_controller.dart';
import 'package:ozys_owner/views/screens/home/payment_confirmed.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:readmore/readmore.dart';

class clientAppointmentPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final controller = Get.put(ClientAppointmentTabController());

    var data = 'Pending Bill : \$100.00';
    var data2 = 'Hair Cut';
    var data3 = 'Jacobs Barber Studio,Jacobs Barber Studio.Jacobs Barber Studio.Jacobs Barber Studio.';
    var data4 = 'Here will be special instruction';

    return Scaffold(
      appBar: tabappBar(
        centerTitle: true,
        title: "Client Appointments",
        height: 80,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios_outlined,
        ),
        data: TabBar(
          labelStyle: TextStyle(fontSize: 11),
          indicatorColor: mainColor,
          labelColor: mainColor,
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.symmetric(vertical: 5),
          controller: controller.tabController,
          tabs: [
            Text("Requested"),
            Text("Upcoming"),
            Text("Canceled"),
            Text("Completed"),
          ],)
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: [

          RequestedAppoimentTile(
              data: data,
              data2: data2,
              data3: data3,
              data4: data4),

          UpComingAppoimentTile(
              data: data,
              data2: data2,
              data3: data3,
              data4: data4),

          CancelAppoimentTile(
              data: data,
              data2: data2,
              data3: data3,
              data4: data4),

          CompletedAppoimentTile(
              data: data,
              data2: data2,
              data3: data3,
              data4: data4),
        ],
      ),
    );
  }
}


class RequestedAppoimentTile extends StatelessWidget {
  const RequestedAppoimentTile({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Container(
            height: Get.height/5,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 2,vertical: 5),
            padding: EdgeInsets.only(left: 12, right: 12, top: 8),
            decoration: BoxDecoration(
              // color: Colors.red,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xffE2E0E0))),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: mainColor),
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
                      height: 8,
                    ),
                    Text(
                      data2,
                      style: mediumFont.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),

            Container(
              width: Get.width/1.6,
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
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: mainColor),
                          child: Center(
                            child: Text(
                              'Approve',
                              style: mediumFont.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.redAccent),
                          child: Center(
                            child: Text(
                              'Reject',
                              style: mediumFont.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                Spacer(
                  flex: 4,
                ),
                VerticalDivider(),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'April',
                      style: mediumFont.copyWith(fontSize: 10),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '8',
                      style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '1:00 PM',
                      style: mediumFont.copyWith(fontSize: 12),
                    )
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UpComingAppoimentTile extends StatelessWidget {
  const UpComingAppoimentTile({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return ListView(
      children: [
        Container(
          height: 140,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          padding: EdgeInsets.only(left: 12, right: 12, top: 8),
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
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green),
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
                    height: 8,
                  ),
                  Text(
                    data2,
                    style: mediumFont.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: Get.width/1.6,
                    height: Get.height/15,
                    // color: Colors.yellow,
                    child: ReadMoreText(
                      data3,
                      trimLines: 2,
                      colorClickableText: Colors.black,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      style: mediumFont.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8D8D8D)),
                      moreStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,),
                      lessStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(PaymentConfirmedPage());
                    },
                    child: Text("details..",
                    style: TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline
                    ),),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                ],
              ),
              Spacer(
                flex: 4,
              ),
              VerticalDivider(),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Aprial',
                    style: mediumFont.copyWith(fontSize: 10),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '8',
                    style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '1:00 PM',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}

class CancelAppoimentTile extends StatelessWidget {
  const CancelAppoimentTile({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return ListView(
      children: [
        Container(
          height: 130,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          padding: EdgeInsets.only(left: 12, right: 12, top: 8),
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
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.redAccent),
                    child: Center(
                      child: Text(
                        "Bill : \$100.00",
                        style: mediumFont.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data2,
                    style: mediumFont.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),

                  Container(
                    width: Get.width/1.8,
                    height: Get.height/13,
                    // color: Colors.yellow,
                    child: ReadMoreText(
                      data3,
                      trimLines: 2,
                      colorClickableText: Colors.black,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      style: mediumFont.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8D8D8D)),
                      moreStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.red,),
                      lessStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),

                ],
              ),
              Spacer(
                flex: 4,
              ),
              VerticalDivider(),

              Column(

                children: [
                  Text(
                    'April',
                    style: mediumFont.copyWith(fontSize: 10),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '8',
                    style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '1:00 PM',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    height: 20,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.redAccent),
                    child: Center(
                      child: Text(
                        "CANCELLED",
                        style: mediumFont.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ],

    );
  }
}

class CompletedAppoimentTile extends StatelessWidget {
  const CompletedAppoimentTile({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return ListView(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          padding: EdgeInsets.only(left: 12, right: 12, top: 8),
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
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.amber,),
                    child: Center(
                      child: Text(
                        "Completed : \$100.00",
                        style: mediumFont.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),


                  RatingBarIndicator(
                    direction: Axis.horizontal,
                    rating: 5,
                    itemSize: 20,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),


                  Text(
                    "HairCut,Shave",
                    style: mediumFont.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "by Syed Talha Faiz",
                    style: mediumFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff272833)),
                  ),
                  SizedBox(
                    height: 4,
                  ),

                  Container(
                    width: Get.width/1.5,
                    height: Get.height/14,
                    // color: Colors.yellow,
                    child: ReadMoreText(
                      "When you don’t have the time to write a personal message to every customer,then you text her perosnal",
                      trimLines: 2,
                      colorClickableText: Colors.black,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      style: mediumFont.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8D8D8D)),
                      moreStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,),
                      lessStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),

                    ),
                  ),


                ],
              ),
              Spacer(
                flex: 4,
              ),
              VerticalDivider(),

              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'April',
                    style: mediumFont.copyWith(fontSize: 10),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '8',
                    style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '1:00 PM',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}




