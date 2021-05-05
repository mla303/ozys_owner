import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/custom_dialog_controller.dart';
import 'package:ozys_owner/controllers/sales_history_controller.dart';
import 'package:ozys_owner/models/sales_history_model.dart';
import 'package:ozys_owner/views/screens/home/payment_confirmed.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';
import 'package:readmore/readmore.dart';

import '../transaction_details.dart';


enum Widgets {
  appointment,
  unfinished,
  cancelled,
}

class SalesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;

final controller = Get.put(SalesTabController());

    return Scaffold(
      appBar: tabappBar(
          centerTitle: true,
          title: "Sales",
          height: 80,
          action: SizedBox(),
          leading: SizedBox(),
          data: TabBar(
            labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            labelPadding: EdgeInsets.symmetric(vertical: 5),
            controller: controller.salestabController,
            tabs: [
              Text("Sales History"),
              Text("To be Charged"),

            ],)
      ),
      body: TabBarView(
        controller: controller.salestabController,

          children: [


            SalesHistory(),
            ToBeCharged()


          ],


      ),
    );
  }
}

class ToBeCharged extends StatefulWidget {

  @override
  _ToBeChargedState createState() => _ToBeChargedState();
}

class _ToBeChargedState extends State<ToBeCharged> {

  final controller = Get.put(ClientAppointmentTabController());
  Widgets selectedWidget = Widgets.appointment;

  var data = 'Pending Bill : \$100.00';
  var data2 = 'Hair Cut';
  var data3 = 'Jacobs Barber Studio,Jacobs Barber Studio.Jacobs Barber Studio.Jacobs Barber Studio.';
  var data4 = 'Here will be special instruction';

  @override
  Widget build(BuildContext context) {

    var width = Get.width;
    var height = Get.height;
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TabBar(
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
            ],),

          Expanded(
            child: TabBarView(
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
          ),



//           SizedBox(height: 20,),
//           Container(
//             width: Get.width/1.2,
//             child: Wrap(
//               direction: Axis.horizontal,
//               children: [
//
//
//                 GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedWidget = Widgets.appointment;
//                       });
//                     },
//                     child: new Container(
//                       width: width/3.6,
//                       height: height/18,
//
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(5),
//                               topLeft: Radius.circular(5)),
//                           border: Border.all(
//                               color: selectedWidget ==
//                                   Widgets.appointment
//                                   ? Colors.white
//                                   : Color(0xffE0E0E0),
//                               width: 1),
//                           shape: BoxShape.rectangle,
// //                        color: Colors.green
//
//                           color: selectedWidget ==
//                               Widgets.appointment
//                               ? Colors.black
//                               : Colors.transparent
//                       ),
//                       padding: new EdgeInsets.fromLTRB(
//                           10.0, 4.0, 10.0, 4.0),
//
//                       child: Center(
//                         child: Text("Appointment",style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             color:  selectedWidget == Widgets.appointment
//                                 ? Colors.white
//                                 : Colors.black,
//                             fontSize: 12
//                         ),),
//                       ),
//                     )),
//
//
//                 GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedWidget = Widgets.unfinished;
//                       });
//                     },
//                     child: new Container(
// //                      height: height/6,
//                       width: width/3.6,
//                       height: height/18,
//
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(2),
//                           border: Border.all(
//                               color: selectedWidget ==
//                                   Widgets.unfinished
//                                   ? Colors.white
//                                   : Color(0xffE0E0E0),
//                               width: 1),
//                           shape: BoxShape.rectangle,
// //                        color: Colors.green
//
//                           color: selectedWidget ==
//                               Widgets.unfinished
//                               ? Colors.black
//                               : Colors.transparent),
//                       padding: new EdgeInsets.fromLTRB(
//                           10.0, 4.0, 10.0, 4.0),
//
//                       child: Center(
//                         child: Text("Unfinished",style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             color:  selectedWidget == Widgets.unfinished
//                                 ? Colors.white
//                                 : Colors.black,
//                             fontSize: 12
//                         ),),
//                       ),
//                     )),
//
//                 GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedWidget = Widgets.cancelled;
//                       });
//                     },
//                     child: new Container(
//                       width: width/3.6,
//                       height: height/18,
//
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                               bottomRight: Radius.circular(5),
//                               topRight: Radius.circular(5)),
//                           border: Border.all(
//                               color: selectedWidget ==
//                                   Widgets.cancelled
//                                   ? Colors.white
//                                   : Color(0xffE0E0E0),
//                               width: 1),
//                           shape: BoxShape.rectangle,
//                           color: selectedWidget ==
//                               Widgets.cancelled
//                               ? Colors.black
//                               : Colors.transparent),
//                       padding: new EdgeInsets.fromLTRB(
//                           10.0, 4.0, 10.0, 4.0),
//
//                       child: Center(
//                         child: Text("Cancelled",style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             color:  selectedWidget == Widgets.cancelled
//                                 ? Colors.white
//                                 : Colors.black,
//                             fontSize: 12
//                         ),),
//                       ),
//                     )),
//
//
//           SizedBox(height: 10,),
//           Container(
//             // height: height/2,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 100,),
//                 Icon(Icons.search,size: 50,),
//                 Text("Currently, You don\'t have any appoinments that can be charged",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 18,
//                   color: Colors.black
//                 ),
//                 textAlign: TextAlign.center,),
//               ],
//             ),
//           )]),
//           ),
        ],
      )
      );
  }
}


class SalesHistory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: GetBuilder<SalesHistoryController>(
            init: SalesHistoryController(),
            builder: (controler) {
              return ListView.separated(
                itemCount: controler.notif.length,
                itemBuilder: (context, index) {
                  return SalesTile(
                    notificationModel: controler.notif[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 30,
                  );
                },
              );
            }),
      ),
    );
  }
}


class SalesTile extends StatefulWidget {
  SalesHistoryModel notificationModel;


  SalesTile({this.notificationModel,});

  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<SalesTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, top: 0),
      child: GestureDetector(
        onTap: (){
          Get.to(TransactionDetails());
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomMyAvatar(
              width: 40.0,
              height: 40.0,
              data: ("assets/images/person.png"),
              colr: mainColor,
              bgColor: mainColor,
            ),
            SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(widget.notificationModel.time,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w300),),
                    SizedBox(width: 5,),
                    Text(widget.notificationModel.date,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 12,fontWeight: FontWeight.w300),),

                  ],
                ),
                Row(
                  children: [
                    Text(widget.notificationModel.title,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 12,fontWeight: FontWeight.w300),),
                    SizedBox(width: 5,),
                    Text(widget.notificationModel.msg,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 12,fontWeight: FontWeight.w300),),
                  ],
                ),
              ],
            ),
            Spacer(),
            Text(widget.notificationModel.paymnet,style: TextStyle(color: Colors.black.withOpacity(0.9),fontSize: 14,fontWeight: FontWeight.w300),),
            SizedBox(width: 5,),
            Icon(Icons.arrow_forward_ios,size: 14,)
          ],
        ),
      ),
    );
    ;
  }
}


class MyFirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }
}

class MySecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
    );
  }
}

class MyThirdTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
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
            height: Get.height/4.7,
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
                        GestureDetector(
                          onTap: () => Get.snackbar("Approved", "requests"),
                          child: Container(
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
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () => Get.snackbar("Rejected", "request"),
                          child: Container(
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
          height: Get.height/4.5,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
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
                  Text(
                    "by Syed Talha Faiz",
                    style: mediumFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff272833)),
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
          height: Get.height/5.4,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
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
                  Text(
                    "by Syed Talha Faiz",
                    style: mediumFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff272833)),
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
          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
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


