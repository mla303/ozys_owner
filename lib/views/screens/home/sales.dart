import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/custom_dialog_controller.dart';
import 'package:ozys_owner/controllers/sales_history_controller.dart';
import 'package:ozys_owner/models/sales_history_model.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';

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


  Widgets selectedWidget = Widgets.appointment;

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
          SizedBox(height: 20,),
          Container(
            width: Get.width/1.2,
            child: Wrap(
              direction: Axis.horizontal,
              children: [


                GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedWidget = Widgets.appointment;
                      });
                    },
                    child: new Container(
                      width: width/3.6,
                      height: height/18,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              topLeft: Radius.circular(5)),
                          border: Border.all(
                              color: selectedWidget ==
                                  Widgets.appointment
                                  ? Colors.white
                                  : Color(0xffE0E0E0),
                              width: 1),
                          shape: BoxShape.rectangle,
//                        color: Colors.green

                          color: selectedWidget ==
                              Widgets.appointment
                              ? Colors.black
                              : Colors.transparent
                      ),
                      padding: new EdgeInsets.fromLTRB(
                          10.0, 4.0, 10.0, 4.0),

                      child: Center(
                        child: Text("Appointment",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color:  selectedWidget == Widgets.appointment
                                ? Colors.white
                                : Colors.black,
                            fontSize: 12
                        ),),
                      ),
                    )),


                GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedWidget = Widgets.unfinished;
                      });
                    },
                    child: new Container(
//                      height: height/6,
                      width: width/3.6,
                      height: height/18,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                              color: selectedWidget ==
                                  Widgets.unfinished
                                  ? Colors.white
                                  : Color(0xffE0E0E0),
                              width: 1),
                          shape: BoxShape.rectangle,
//                        color: Colors.green

                          color: selectedWidget ==
                              Widgets.unfinished
                              ? Colors.black
                              : Colors.transparent),
                      padding: new EdgeInsets.fromLTRB(
                          10.0, 4.0, 10.0, 4.0),

                      child: Center(
                        child: Text("Unfinished",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color:  selectedWidget == Widgets.unfinished
                                ? Colors.white
                                : Colors.black,
                            fontSize: 12
                        ),),
                      ),
                    )),

                GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedWidget = Widgets.cancelled;
                      });
                    },
                    child: new Container(
                      width: width/3.6,
                      height: height/18,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(5),
                              topRight: Radius.circular(5)),
                          border: Border.all(
                              color: selectedWidget ==
                                  Widgets.cancelled
                                  ? Colors.white
                                  : Color(0xffE0E0E0),
                              width: 1),
                          shape: BoxShape.rectangle,
                          color: selectedWidget ==
                              Widgets.cancelled
                              ? Colors.black
                              : Colors.transparent),
                      padding: new EdgeInsets.fromLTRB(
                          10.0, 4.0, 10.0, 4.0),

                      child: Center(
                        child: Text("Cancelled",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color:  selectedWidget == Widgets.cancelled
                                ? Colors.white
                                : Colors.black,
                            fontSize: 12
                        ),),
                      ),
                    )),


          SizedBox(height: 10,),
          Container(
            // height: height/2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                Icon(Icons.search,size: 50,),
                Text("Currently, You don\'t have any appoinments that can be charged",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black
                ),
                textAlign: TextAlign.center,),
              ],
            ),
          )]),
          ),
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



