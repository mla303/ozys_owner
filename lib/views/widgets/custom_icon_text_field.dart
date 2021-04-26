import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIconTextField extends StatelessWidget {
  final Widget suffixicon;
  final Widget prefixIcon;
  final String hintText2;
  final TextEditingController txtController;
  const CustomIconTextField(
      {Key key,
      @required this.suffixicon,
      @required this.txtController,
      @required this.hintText2,
      @required this.prefixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: Get.width,
      margin: EdgeInsets.only(top: 12, left: 4, right: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xffEFEFF4)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
            obscureText: false,
            controller: txtController,
            decoration: InputDecoration(
              suffixIcon: suffixicon,
              prefixIcon: prefixIcon,
              hintText: hintText2,
              hintStyle: TextStyle(
                  color: Color(0xffB5B5B5),
                  fontSize: 16,
                  fontFamily: 'WorkSans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              fillColor: Colors.transparent,
              filled: true,
              isDense: false
            ),
          )),
        ],
      ),
    );
  }
}
