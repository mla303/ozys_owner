

import 'package:get/get.dart';
import 'package:ozys_owner/models/country_model.dart';

class CountryController extends GetxController {
  List<CountryModel> todos = [
    CountryModel(
      title: 'Canada',
    ),
    CountryModel(
      title: 'USA',
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