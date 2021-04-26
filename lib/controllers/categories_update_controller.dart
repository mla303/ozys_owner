import 'package:get/get.dart';
import 'package:ozys_owner/models/categories_update_model.dart';



class CategoriesUpdateController extends GetxController {
  List<CategoriesUpdateModel> todos = [
    CategoriesUpdateModel(
      title: 'Hair salon',
    ),
    CategoriesUpdateModel(
      title: 'Barber shop',
    ),
    CategoriesUpdateModel(
      title: 'Nail salon',
    ),
    CategoriesUpdateModel(
      title: 'Beauty salon',
    ),
    CategoriesUpdateModel(
      title: 'Eyebrows and lashes',

    ),
    CategoriesUpdateModel(
      title: 'Massage',
    ),
    CategoriesUpdateModel(
      title: 'Hair Removal',
    ),
    CategoriesUpdateModel(
      title: 'Makeup artist',
    ),
    CategoriesUpdateModel(
      title: 'Tatto shops',
    ),
    CategoriesUpdateModel(
      title: 'Personal trainer',
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