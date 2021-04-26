import 'package:flutter/material.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 210,
      width: 210,
      child: Card(
        elevation: 0.0,
        child: Column(
          children: [
            Image.asset(
              'assets/images/component.png',
              height: 133,
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Red Box Barber',
                  style: boldFonts.copyWith(
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                Text(
                  '4.9 mi',
                  style: mediumFont.copyWith(fontSize: 8),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 18,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    'F 11 markaz islamabad 12 gali no 4 asd ',
                    style: mediumFont.copyWith(
                        fontSize: 8,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
