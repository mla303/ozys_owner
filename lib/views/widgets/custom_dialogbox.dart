import 'package:circular_check_box/circular_check_box.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:day_night_time_picker/lib/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/controllers/custom_dialog_controller.dart';
import 'package:ozys_owner/controllers/price_type_controller.dart';
import 'package:ozys_owner/models/price_type_model.dart';
import 'colors.dart';


class CustomDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CustomDialogBoxController());

    return  Column(
      children: [
        Container(
          height: 25,
          child: TabBar(
            indicatorColor: Colors.grey,
                controller: controller.tabController,
                tabs: [
                  Text("From"),
                  Text("To"),
                ],
    ),
        ),
         Container(
           height: Get.height/1.8,
           width: Get.width,
           child: TabBarView(
              controller: controller.tabController,
              children: [
                FromPage(),
                ToPage(),
              ],
            ),
         ),
      ],
    );
  }
}


class CustomDurationDialogBox extends StatefulWidget {
  @override
  _CustomDurationDialogBoxState createState() => _CustomDurationDialogBoxState();
}

class _CustomDurationDialogBoxState extends State<CustomDurationDialogBox> {

  Duration initialtimer = new Duration();

  @override
  Widget build(BuildContext context) {

    return   CupertinoTimerPicker(
      mode: CupertinoTimerPickerMode.hm,
      minuteInterval: 1,
      secondInterval: 1,
      initialTimerDuration: initialtimer,
      onTimerDurationChanged:(Duration changedtimer) {
        setState(() {
          initialtimer = changedtimer;
        });
      },
    );
  }
}



class PriceTypeDialogBox extends StatefulWidget {
  @override
  _PriceTypeDialogBoxState createState() => _PriceTypeDialogBoxState();
}

class _PriceTypeDialogBoxState extends State<PriceTypeDialogBox> {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: Get.height/8,
      child: GetBuilder<PriceTypeController>(
          init: PriceTypeController(),
          builder: (controler) {
            return ListView.builder(
                itemCount: controler.todos.length,
                itemBuilder: (context, index) {
                  return TodoTile(
                    onPress: (value) {
                      controler.changeStatus(
                          controler.todos[index].title, value);
                    },
                    todo: controler.todos[index],
                  );
                });
          }),
    );
  }
}



class FromPage extends StatefulWidget {
  @override
  _FromPageState createState() => _FromPageState();
}

class _FromPageState extends State<FromPage> with AutomaticKeepAliveClientMixin {
  TimeOfDay _time = TimeOfDay.now().replacing(minute: 30);
  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
      Get.back();
    });
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return createInlinePicker(

      barrierColor: mainColor,
      accentColor: mainColor,
      unselectedColor: Colors.grey,
      elevation: 0,
      value: _time,
      isOnChangeValueMode: false,
      onChange: onTimeChanged,
      minuteInterval: MinuteInterval.FIVE,
      iosStylePicker: false,
      minMinute: 7,
      maxMinute: 56,
      dialogInsetPadding:EdgeInsets.symmetric(horizontal: 5,vertical: 1),
    );
  }

  @override
  bool get wantKeepAlive => true;
}



class ToPage extends StatefulWidget {
  @override
  _ToPageState createState() => _ToPageState();
}

class _ToPageState extends State<ToPage> with AutomaticKeepAliveClientMixin {
  TimeOfDay _time = TimeOfDay.now().replacing(minute: 30);
  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
      Get.back();
    });
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return createInlinePicker(
      barrierColor: mainColor,
      accentColor: mainColor,
      unselectedColor: Colors.grey,
      elevation: 0,
      value: _time,
      isOnChangeValueMode: false,
      onChange: onTimeChanged,
      minuteInterval: MinuteInterval.ONE,
      iosStylePicker: false,
      minMinute: 7,
      maxMinute: 56,
      dialogInsetPadding:EdgeInsets.symmetric(horizontal: 5,vertical: 1),
    );
  }

  @override
  bool get wantKeepAlive => true;
}


class TodoTile extends StatefulWidget {
  PriceTypeModel todo;
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

