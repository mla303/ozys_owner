import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_dialogbox.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';


class AddService extends StatelessWidget {
  TextEditingController nameOfService = TextEditingController();
  TextEditingController duration = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController priceType = TextEditingController();

  var currencyOption = ['Hair Style', 'Face Tunning', 'Eyebrow'];
  var _Selectedoptions = 'Hair Style';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Your Services",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),


      ),
      body: SingleChildScrollView(
        child: Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                SizedBox(
                  height: 20,
                ),

                Center(
                  child: Text(
                    'Services Details',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: Get.height/50),
                  ),
                ),
                SizedBox(
                  height: Get.height/40,
                ),
                Center(
                  child: Text(
                    'You can add more details of services later.',
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(
                  height: Get.height/25,
                ),

                Text('Name of Service'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: nameOfService,
                  hintText2: 'Enter Name of Service',
                ),

                Text('Duration'),
                CustomTextField(
                  enable: true,
                  obscuretext: false,
                  txtController: duration,
                  ontap: (){
                    Get.snackbar("title", "message");
                    Get.defaultDialog(
                      titleStyle: TextStyle(color: mainColor),
                        title: "Duration",
                        content: Container(
                            child: CustomDurationDialogBox()),
                      actions: [
                        CustomButton(
                            lable: "Done",
                            onPress: () => Get.back(),
                            color: mainColor,
                            radius: 8,
                            borderColor: mainColor,
                            lableColor: Colors.white,
                            buttonHeight: 25)
                      ]
                    );
                  },
                  hintText2: 'Duration',
                  textInputType: TextInputType.number,
                ),

                Text('Price'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: price,
                  hintText2: '\$25',
                  textInputType: TextInputType.number,

                ),
                Text('Price type'),
                CustomTextField(
                  enable: true,
                  obscuretext: true,
                  txtController: priceType,
                  hintText2: 'Fixed',
                  textInputType: TextInputType.number,

                  ontap: (){
                    Get.defaultDialog(
                        titleStyle: TextStyle(color: mainColor),
                        title: "Price Type",
                        content: PriceTypeDialogBox(),
                        actions: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyCustomButton(
                                  lable: "Cancel",
                                  onPress: () => Get.back(),
                                  color: Colors.white,
                                  buttonWidth: 110,
                                  radius: 6,
                                  borderColor: Colors.black.withOpacity(0.2),
                                  lableColor: Colors.grey,
                                  buttonHeight: 20),
                              SizedBox(width: 10,),
                              MyCustomButton(
                                  lable: "Done",
                                  onPress: () => Get.back(),
                                  color: mainColor,
                                  buttonWidth: 110,
                                  radius:6,
                                  borderColor: mainColor,
                                  lableColor: Colors.white,
                                  buttonHeight: 20),
                            ],
                          ),
                          SizedBox(height: 10,)

                        ]
                    );
                  },

                ),

                Text('Select Category'),
                SizedBox(height: 5,),
                Container(
                  width: Get.width/1.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: Color(0xffEFEFF4)),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: const EdgeInsets.only(left:18.0,right: 8),
                      child: ButtonTheme(
                        child: DropdownButton<String>(
                          //hint: Text("Select Airport"),
                          items: currencyOption.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem,style: TextStyle(color: Color(0xff323031), letterSpacing: 1),),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) {
                            // Your code to execute, when a menu item is selected from drop down
                            this._Selectedoptions = newValueSelected;
                          },
                          value: _Selectedoptions,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: Get.height/20,
                ),
                CustomButton(
                  lable: "Save",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: (){
                    Get.back();
                  },

                ),




              ],
            )),
      ),
    );
  }
}
