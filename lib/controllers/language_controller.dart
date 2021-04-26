import 'package:get/get.dart';
import 'package:ozys_owner/models/language_model.dart';


class LanguageController extends GetxController {
  List<LanguageModel> todos = [
    LanguageModel(
      title: 'French',
    ),
    LanguageModel(
      title: 'English',
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