import 'package:get/get.dart';
import 'package:ozys_owner/models/price_type_model.dart';


class PriceTypeController extends GetxController {
  List<PriceTypeModel> todos = [
    PriceTypeModel(
      title: 'Fixed',
    ),
    PriceTypeModel(
      title: 'Start at',
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
