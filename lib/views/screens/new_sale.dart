import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/screens/transaction_details.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';

class NewSale extends StatelessWidget {
  TextEditingController tip = TextEditingController();
  var dob = '18 March, 1997';
  var address = 'Islamabad';

  List<String> _locations = ['By Cash', 'By Card',]; // Option 2
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Sale Detail",
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
                Row(
                  children: [
                    CustomMyAvatar(
                      width: 40.0,
                      height: 40.0,
                      data: ("assets/images/person.png"),
                      colr: mainColor,
                      bgColor: mainColor,
                    ),


                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ali Talib',
                          style:
                          heding.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '$address | $dob',
                          style:
                          heding.copyWith(fontSize: 12, fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: Get.height / 30,
                ),

                Text(
                  'Details', // its simple text, it will come from database
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Get.height / 40,
                      fontWeight: FontWeight.bold),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Haircut', // this is the name of services, it will come from database
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Get.height / 40,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$40', // this is the name of services, it will come from database
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Get.height / 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                Text(
                  'Highlights,Coloring', // this is the name of services, it will come from database
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: Get.height / 50,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Haircut', // this is the name of services, it will come from database
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Get.height / 40,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$50', // this is the name of services, it will come from database
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Get.height / 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                Text(
                  'Highlights,Coloring', // this is the name of services, it will come from database
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: Get.height / 50,
                      fontWeight: FontWeight.w500),
                ),



                Divider(),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Sub Total: \$90', // its simple text, it will come from database
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.height / 40,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: Get.height/80,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Total: \$500', // its simple text, it will come from database
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Get.height / 40,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: Get.height/80,),
                Text('Tip'),
                CustomTextField(
                  enable: false,
                  obscuretext: false,
                  txtController: tip,
                  hintText2: 'Enter Tip Amount',
                ),
                Divider(),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                      hint: Text('Payment via',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black
                      ),), // Not necessary for Option 1
                      value: _selectedLocation,
                      onChanged: (newValue) {
                        // _selectedLocation =newValue;
                        // setState(() {
                        //   _selectedLocation = newValue;
                        // });
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  Text('\$700',
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: Get.height /30,
                      fontWeight: FontWeight.w600),
                  ),
                ],),
                SizedBox(height: Get.height/8,),

                CustomButton(
                  lable: "Charge",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: () {
                    Get.to(TransactionDetails());
                  },
                ),
              ],
            )),
      ),
    );
  }
}
