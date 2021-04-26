import 'package:get/get.dart';
import 'package:ozys_owner/models/calendar_options_model.dart';




class CalendarOptionsController extends GetxController {
  List<CalendarOptionsModel> todos = [
    CalendarOptionsModel(
      title: 'Select All',
    ),
    CalendarOptionsModel(
      title: 'Finished',
    ),
    CalendarOptionsModel(
      title: 'Confirmed',
    ),
    CalendarOptionsModel(
      title: 'Not Confirmed',
    ),
  ];

  List<String> todoTemp = [];

  changeStatus(String todo, bool condition) {
    if (condition) {
      todoTemp.add(todo);
    } else {
      todoTemp.remove(todo);
    }
    print(todoTemp.length);
    update();
  }
}