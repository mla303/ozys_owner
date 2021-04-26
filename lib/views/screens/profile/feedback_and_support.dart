import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:ozys_owner/views/widgets/colors.dart';
import 'package:ozys_owner/views/widgets/custom_button.dart';
import 'package:ozys_owner/views/widgets/custom_continer.dart';
import 'package:ozys_owner/views/widgets/custom_text_field.dart';
import 'package:ozys_owner/views/widgets/multi_line_text_field.dart';


class FeedbackAndSupport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TextEditingController leaveComment = TextEditingController();

    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Feedback and Support",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            width: Get.width,
            height: Get.height,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RatingBarIndicator(
                  direction: Axis.horizontal,
                  rating: 5,
                  itemSize: 30,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
SizedBox(height: Get.height/60,),
Text('Tell us a bit more about why you chose us', style: TextStyle(fontWeight: FontWeight.w600, fontSize: Get.height/50),),
                // Text('About Us'),
                SizedBox(height: Get.height/40,),
                MultiLineTextField(
                    txtController: leaveComment,
                    hintText2: "Leave a Comment for us",
                    textInputType: TextInputType.text),

                CustomButton(

                  lable: "Submit",
                  borderColor: mainColor,
                  color: mainColor,
                  lableColor: Colors.white,
                  radius: 10,
                  onPress: (){
                    Get.offNamed('/BusinessDetails');
                  },

                ),

              ],
            )),
      ),
    );
  }
}


