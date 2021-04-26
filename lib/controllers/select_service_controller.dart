import 'package:get/get.dart';
import 'package:ozys_owner/models/select_service_model.dart';



class SelectServiceController extends GetxController {
  List<SelectServiceModel> todos = [
    SelectServiceModel(
      title: 'Color',
    ),
    SelectServiceModel(
      title: 'Heighlights',
    ),
    SelectServiceModel(
      title: 'Shampoo And Style',
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