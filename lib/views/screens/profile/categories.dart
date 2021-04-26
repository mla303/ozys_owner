import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/categories_controller.dart';
import 'package:ozys_owner/models/categories_model.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';


class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Categories",
        height: 70,
        action: SizedBox(),
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

                GetBuilder<CategoriesController>(
                    init: CategoriesController(),
                    builder: (controller) {
                      return ListView.builder(
                          itemCount: controller.todos.length,
                          itemBuilder: (context, index) {
                            return TodoTile(
                              onPress: (value) {
                                controller.changeStatus(
                                    controller.todos[index].title, value);
                              },
                              todo: controller.todos[index],
                            );
                          });
                    }),



              ],
            )),
      ),
    );
  }
}


class TodoTile extends StatefulWidget {
  CategoriesModel todo;
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.todo.title, style: TextStyle(color: Colors.black),),
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

        ],
      ),
    );
    ;
  }
}
