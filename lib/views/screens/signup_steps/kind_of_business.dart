import 'package:circular_check_box/circular_check_box.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/kind_of_business_controller.dart';
import 'package:ozys_owner/models/kindOfbusiness.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';

import 'your_services_page.dart';

class KindOfBusinessPage extends StatelessWidget {
  // List<businessType> bussinesss = [
  //   businessType(title: "Hair Salon"),
  // ];

  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Business Type",
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
              Text(
                'What Kind Of Business Are You?',
                style:
                    heding.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 10,
              ),

              GetBuilder<KindOfBusinessController>(
                  init: KindOfBusinessController(),
                  builder: (controler) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: controler.todos.length,
                          itemBuilder: (context, index) {
                            return TodoTile(
                              onPress: (value) {
                                controler.changeStatus(
                                    controler.todos[index].title, value);
                              },
                              todo: controler.todos[index],
                            );
                          }),
                    );
                  }),
              SizedBox(
                height: 10,
              ),


              CustomButton(
                lable: "Continue",
                borderColor: mainColor,
                color: mainColor,
                lableColor: Colors.white,
                radius: 10,
                onPress: () {
                  Get.to(YourServicesPage());
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
  BusinessTypeModel todo;
  ValueChanged onPress;

  TodoTile({this.todo, this.onPress});

  @override
  _TodoTileState createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, top: 0),
      child: Row(
        children: [
          CircularCheckBox(
              activeColor: mainColor,
              checkColor: Colors.white,
              value: isSelected,
              onChanged: (value) {
                isSelected = value;
                print('=====');
                setState(() {
                  widget.onPress(value);
                });
              }),
          Text(widget.todo.title),
        ],
      ),
    );
    ;
  }
}
