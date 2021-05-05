import 'package:get/get.dart';
import 'package:ozys_owner/models/language_model.dart';


class LanguageController extends GetxController {
  List<LanguageModel> todos = [
    LanguageModel(
      title: 'French',
      flag: "assets/flags/france.png"
    ),
    LanguageModel(
      title: 'English',
        flag: "assets/flags/english.png"
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