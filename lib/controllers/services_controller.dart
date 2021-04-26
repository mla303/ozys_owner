import 'package:get/get.dart';
import 'package:ozys_owner/models/services_model.dart';




class ServicesController extends GetxController {
  List<ServicesModel> todos = [
    ServicesModel(
      title: 'Hair cut ',
    ),
    ServicesModel(
      title: 'Hair coloring',
    ),
    ServicesModel(
      title: 'Face Makeup',
    ),
    ServicesModel(
      title: 'Hair Removal',
    ),
    ServicesModel(
      title: 'Eyebrows and leshes',
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