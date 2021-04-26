import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';

import '../add_category.dart';
import '../add_service.dart';
import '../delete_service.dart';

class ServicesAndCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Services and Category",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),

      body: Container(
        width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'Category',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: Get.height / 40),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(height: Get.height/80,),

          //1st item
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.defaultDialog(
                        title: "Confirmations",
                        content: Text("Are you sure?",),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("NO"),
                            onPressed: () {
                              Get.back();
                              Get.snackbar("Category", "Not Delete");
                            },
                          ),
                          FlatButton(
                            child: Text("YES"),
                            onPressed: () {
                              Get.back();
                              Get.snackbar("Category", "Deleted");
                            },
                          )
                        ],
                      );
                    },
                    child: Icon(Icons.cancel,color: Colors.grey.withOpacity(0.4),size: 16,)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Haircut',
                  style: TextStyle(fontSize: 16,color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),


            //2nd item
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.defaultDialog(
                        title: "Confirmations",
                        content: Text("Are you sure?",),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("NO"),
                            onPressed: () {
                              Get.back();
                              Get.snackbar("Category", "Not Delete");
                            },
                          ),
                          FlatButton(
                            child: Text("YES"),
                            onPressed: () {
                              Get.back();
                              Get.snackbar("Category", "Deleted");
                            },
                          )
                        ],
                      );
                    },
                    child: Icon(Icons.cancel,color: Colors.grey.withOpacity(0.4),size: 16,)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Highlights',
                  style: TextStyle(fontSize: 16,color: Colors.black),
                  textAlign: TextAlign.center,
                ),

              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            GestureDetector(
              onTap: (){
                Get.to(AddCategory());
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.add_circle,color: mainColor,size: 24,),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Add another category',
                    style: TextStyle(fontSize: 14,color: mainColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),


            SizedBox(height: Get.height/20,),

            Text(
              'Services',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: Get.height / 40),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(height: Get.height/80,),

            //1st item
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.defaultDialog(
                        title: "Confirmations",
                        content: Text("Are you sure?",),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("NO"),
                            onPressed: () {
                              Get.back();
                              Get.snackbar("Service", "Not Delete");
                            },
                          ),
                          FlatButton(
                            child: Text("YES"),
                            onPressed: () {
                              Get.back();
                              Get.snackbar("Service", "Deleted");
                            },
                          )
                        ],
                      );
                    },
                    child: Icon(Icons.cancel,color: Colors.grey.withOpacity(0.4),size: 16,)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Haircut',
                  style: TextStyle(fontSize: 16,color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  '40m',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'fixed',
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '\$30.00',
                      style: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.w200),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () => Get.to(DeleteService()),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey.withOpacity(0.4),size: 16,)),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),

            //2nd item
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.defaultDialog(
                        title: "Confirmations",
                        content: Text("Are you sure?",),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("NO"),
                            onPressed: () {
                              Get.back();
                              Get.snackbar("Service", "Not Delete");
                            },
                          ),
                          FlatButton(
                            child: Text("YES"),
                            onPressed: () {
                              Get.back();
                              Get.snackbar("Service", "Deleted");
                            },
                          )
                        ],
                      );
                    },
                    child: Icon(Icons.cancel,color: Colors.grey.withOpacity(0.4),size: 16,)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Color',
                  style: TextStyle(fontSize: 16,color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  '40m',
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Start at',
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '\$30.00',
                      style: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.w200),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () => Get.to(DeleteService()),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey.withOpacity(0.4),size: 16,)),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),

            GestureDetector(
              onTap: (){
                Get.to(AddService());
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.add_circle,color: mainColor,size: 24,),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Add another services',
                    style: TextStyle(fontSize: 14,color: mainColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            Spacer(),


            CustomButton(
              lable: "Save",
              borderColor: mainColor,
              color: mainColor,
              lableColor: Colors.white,
              radius: 10,
              onPress: () {
                Get.back();
              },
            ),
            SizedBox(
              height: 10,
            ),


          ],
        ),
      ),
    );
  }
}
