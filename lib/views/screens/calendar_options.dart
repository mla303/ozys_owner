import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/calendar_options_controller.dart';
import 'package:ozys_owner/models/calendar_options_model.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';


class CalendarOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CalendarOptionsController controller = Get.put(CalendarOptionsController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Calendar Options",
        height: 70,
        action: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Row(
            children: [
              Text("Apply"),
              SizedBox(width: 10,),
            ],
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            width: Get.width,
            height: Get.height,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GetBuilder<CalendarOptionsController>(
                    init: CalendarOptionsController(),
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
                                todo: controller.todos[index],

                              );

                            }),
                      );
                    }),

              ],
            )

        ),
      ),
    );
  }
}

class TodoTile extends StatefulWidget {
  CalendarOptionsModel todo;
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
      margin: EdgeInsets.only(left: 16, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
          Text(
            widget.todo.title,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
    ;
  }
}
