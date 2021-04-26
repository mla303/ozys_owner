import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/add_staff_controller.dart';
import 'package:ozys_owner/controllers/business_hour_controller.dart';
import 'package:ozys_owner/models/business_hours_model.dart';
import 'package:ozys_owner/views/screens/profile/services.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_dialogbox.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';


class AddStaffMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TextEditingController name = TextEditingController();
    TextEditingController phoneNo = TextEditingController();
    TextEditingController spacielity = TextEditingController();
    TextEditingController experience = TextEditingController();

    AddStaffController controller = Get.put(AddStaffController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Add Staff Member",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          // height: Get.height,
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Center(
                child: Stack(
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
              ),
              SizedBox(height: 20,),
              Text('Name'),
              CustomTextField(
                enable: false,
                obscuretext: false,
                txtController: name,
                hintText2: 'Enter Name',
                textInputType: TextInputType.text,// it will come from database, user can change it
              ),


              Text('Phone No'),
              CustomTextField(
                enable: false,
                obscuretext: false,
                txtController: phoneNo,
                hintText2: 'Enter Phone Number',
                textInputType: TextInputType.number,

              ),
              Text('Experience'),
              CustomTextField(
                enable: false,
                obscuretext: false,
                txtController: experience,
                hintText2: 'Enter experience',
                textInputType: TextInputType.text,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Available for booking',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.height / 50,
                        fontWeight: FontWeight.bold),
                  ),

                  Obx(
                        () => Switch(
                        activeColor: Colors.blue,
                        value: controller.addstaff.value,
                        onChanged: (val) => controller.toggle()),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {

                  Get.to(Services());

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [

                          Text(
                            'Service Performed',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: Get.height / 50,
                                fontWeight: FontWeight.bold),
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
              SizedBox(height: 20,),
              Text(
                'Working Hours',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: Get.height / 40),
              ),
              SizedBox(height: Get.height/80,),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(height: 10,),

              Container(
                width: Get.width,
                height: Get.height/1.2,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: GetBuilder<BusinessHoursController>(
                    init: BusinessHoursController(),
                    builder: (controler) {
                      return ListView.separated(
                        itemCount: controler.todos.length,
                        itemBuilder: (context, index) {
                          return TodoTile(
                            todo: controler.todos[index],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider();
                        },
                      );
                    }),
              ),

              CustomButton(
                lable: "Save",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: (){
                  Get.back();
                },
              ),





            ],
          ),
        ),
      ),
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
      child:  Column(
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
