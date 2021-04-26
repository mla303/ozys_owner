import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiLineTextField extends StatelessWidget {
  final String hintText2;
  final TextEditingController txtController;

  final TextInputType textInputType;
  const MultiLineTextField({
    Key key,
    @required this.txtController,
    @required this.hintText2,

    @required this.textInputType
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height/7,
      margin: EdgeInsets.only(top: 8, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xffEFEFF4)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(

                controller: txtController,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
               // keyboardType: textInputType,
                decoration: InputDecoration(
                  hintText: hintText2,

                  hintStyle: TextStyle(
                    color: Color(0xffC9C9C9),
                    fontSize: 16,
                    fontFamily: 'SanFrancisco',
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  fillColor: Colors.transparent,
                  filled: true,
                ),
              )),
        ],
      ),
    );
  }
}
