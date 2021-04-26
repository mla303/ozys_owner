import 'package:get/get.dart';

import 'package:ozys_owner/models/categories_model.dart';




class CategoriesController extends GetxController {
  List<CategoriesModel> todos = [
    CategoriesModel(
      title: 'Hair Salon',
    ),
    CategoriesModel(
      title: 'Barbershop',
    ),
    CategoriesModel(
      title: 'Nail Salon',
    ),
    CategoriesModel(
      title: 'Beauty Salon',
    ),
    CategoriesModel(
      title: 'Eyebrows \& Lashes',
    ),
    CategoriesModel(
      title: 'Massage',
    ),
    CategoriesModel(
      title: 'Makeup Artist',
    ),
    CategoriesModel(
      title: 'Day Spa',
    ),
    CategoriesModel(
      title: 'Tattoo Shops',
    ),
    CategoriesModel(
      title: 'Personal Trainer',
    ),
    CategoriesModel(
      title: 'Wedding Makeup Artist',
    ),
    CategoriesModel(
      title: 'Medical Esthetician',
    ),
    CategoriesModel(
      title: 'Hair Removal',
    ),
    CategoriesModel(
      title: 'Home Improvement',
    ),
    CategoriesModel(
      title: 'Teeth Whitening',
    ),
    CategoriesModel(
      title: 'Other',
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


  var currencyOption = ['Buying', 'Selling'];
  var Selectedoptions = 'Buying'.obs;

  void onDropDownItemSelected(String value){
    Selectedoptions = value as RxString;
  }
}