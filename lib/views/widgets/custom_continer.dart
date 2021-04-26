import 'package:flutter/material.dart';

class CustomContiner extends StatelessWidget {
  const CustomContiner({Key key, @required this.data, @required this.color})
      : super(key: key);

  final Widget data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      color: color,
      child: Center(
        child: data,
      ),
    );
  }
}




class CustomMyAvatar extends StatelessWidget {
  const CustomMyAvatar({Key key,
    @required this.width,
    @required this.height,
    @required this.data,
    @required this.color,
    @required this.bgColor,
    @required this.colr,
  })
      : super(key: key);

  final String data;
  final Color color,bgColor,colr;
  final width;
  final height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(data),
          fit: BoxFit.cover
        ),
        color: bgColor,
        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
        border: new Border.all(
          color: colr,
          width: 1.0,
        ),
      ),
      width: width,
      height: height,
      color: color,
      // child: Center(
      //   child: data,
      // ),
    );
  }
}

