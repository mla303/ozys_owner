import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/categories_update_controller.dart';
import 'package:ozys_owner/models/categories_update_model.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';


class CategoriesUpdate extends StatelessWidget {
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

                GetBuilder<CategoriesUpdateController>(
                    init: CategoriesUpdateController(),
                    builder: (controler) {
                      return Container(
                        height: Get.height/1.35,
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
                CustomButton(

                  lable: "Save",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: (){
                    Get.offNamed('/BusinessDetails');
                  },

                ),



              ],
            )),
      ),
    );
  }
}


class TodoTile extends StatefulWidget {
  CategoriesUpdateModel todo;
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
      margin: EdgeInsets.only(left: 5, top: 16),
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
          SizedBox(width: Get.width/80,),
          Text(widget.todo.title, style: TextStyle(color: Colors.black),),

        ],
      ),
    );
    ;
  }
}
