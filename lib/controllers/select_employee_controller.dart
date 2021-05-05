import 'package:get/get.dart';
import 'package:ozys_owner/models/select_emploee_model.dart';
import 'package:ozys_owner/models/select_service_model.dart';



class SelectEmployeeController extends GetxController {
  List<SelectEmployeeModel> todos = [
    SelectEmployeeModel(
      title: 'Ali',
    ),
    SelectEmployeeModel(
      title: 'Sameer',
    ),
    SelectEmployeeModel(
      title: 'Sohail',
    ),
    SelectEmployeeModel(
      title: 'Aqib',
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