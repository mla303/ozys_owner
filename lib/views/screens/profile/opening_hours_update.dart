import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/business_hour_controller.dart';
import 'package:ozys_owner/models/business_hours_model.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_dialogbox.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';



class OpeningHours extends StatelessWidget {

  String from = "8:00am";
  String to = "5:00pm";
  bool monday = false;


  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;



    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Business Hours",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),


      ),
      body: Container(
          width: Get.width,
          height: Get.height,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Your Opening Hours',
                  style:
                  heding.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'When can client book with you?',
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(
                height: 30,
              ),

              GetBuilder<BusinessHoursController>(
                  init: BusinessHoursController(),
                  builder: (controler) {
                    return Expanded(
                      child: ListView.separated(
                        itemCount: controler.todos.length,
                        itemBuilder: (context, index) {
                          return TodoTile(
                            todo: controler.todos[index],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider();
                        },
                      ),
                    );
                  }),





              SizedBox(
                height: 20,
              ),


              CustomButton(
                lable: "Save",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: (){
                  // Get.to(ShowWorkPlace());
                },
              ),

              SizedBox(
                height: 10,
              ),






            ],
          )),
    );
  }
}

class TodoTile extends StatefulWidget {
  BusinessHoursModel todo;


  TodoTile({this.todo,});

  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  // bool isSelected = false;

  BusinessHoursController controller = Get.put(BusinessHoursController());
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Container(
      margin: EdgeInsets.only(left: 5, top: 0),
      child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.todo.title,
            style:
            heding.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    widget.todo.Starttime,
                    style:
                    heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_forward,size: 16,),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.todo.Endtime,
                    style:
                    heding.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Obx(() => Switch(
                  activeColor: Colors.blue,
                  value: controller.sun.value,
                  onChanged: (val) {
                    controller.toggle();
                    Get.defaultDialog(

                      titleStyle: TextStyle(color: mainColor),
                      title: "Select Time",
                      content: CustomDialogBox(),

                    );
                  }))
            ],
          ),



        ],
      ),
    );
    ;
  }
}
