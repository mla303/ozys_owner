import 'package:flutter/material.dart';
import 'custom_continer.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).primaryColor;

    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 100,
          left: 100,
          child: CustomContiner(
            color: themeColor,
            data: Icon(Icons.send_rounded),
          ),
        ),
        Positioned(
          top: 110,
          left: 180,
          child: CustomContiner(
            color: Colors.redAccent,
            data: Text(
              'Z',
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
        Positioned(
          top: 190,
          left: 180,
          child: CustomContiner(
            color: themeColor,
            data: Text(
              'S',
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
        Positioned(
          top: 180,
          left: 100,
          child: CustomContiner(
            color: Colors.redAccent,
            data: Text(
              'Y',
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
      ],
    );
  }
}
