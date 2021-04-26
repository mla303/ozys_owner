import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/client_filters_controller.dart';
import 'package:ozys_owner/models/client_filters_model.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';


class ClientFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ClientFiltersController controller = Get.put(ClientFiltersController());
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Client Filters",
        height: 70,
        action: Row(
          children: [
            GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: Text("Apply",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)),SizedBox(width: 10,),
          ],
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
                GetBuilder<ClientFiltersController>(
                    init: ClientFiltersController(),
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

              ],
            )

        ),
      ),
    );
  }
}

class TodoTile extends StatefulWidget {
  ClientFiltersModel todo;
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
          Text(
            widget.todo.title,
            style: TextStyle(color: Colors.black),
          ),
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
