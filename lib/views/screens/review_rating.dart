import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';
import 'package:readmore/readmore.dart';


class ReviewsPage extends StatelessWidget {

  var data = 'Pending Bill : \$100.00';
  var data2 = 'Hair Cut';
  var data3 = 'Jacobs Barber Studio,Jacobs Barber Studio.Jacobs Barber Studio.Jacobs Barber Studio.';
  var data4 = 'Here will be special instruction';

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
          title: 'Reviews and Ratings',
          action: SizedBox(),
          context: context,
          height: 50,
          leading: Icon(Icons.arrow_back_ios)),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 14, right: 15, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  CancelAppoimentTile(
                      data: data,
                      data2: data2,
                      data3: data3,
                      data4: data4),

                  SizedBox(
                    height:10,
                  ),
                Row(
                    children: [
                      RatingBarIndicator(
                        direction: Axis.horizontal,
                        rating: 5,
                        itemSize: 20,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Jan 21,2021',
                        style: mediumFont.copyWith(
                            fontSize: 12, color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height:10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Haircut,Shave',
                        style: mediumFont.copyWith(
                            fontSize: 12, color: Colors.black),
                      ),
                      Spacer(),
                      Container(
                        height: 20,
                        width: 50,
                        margin: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xffEEEEEE)),
                        ),
                        child: Center(
                          child: Text(
                            'Hide',
                            style: mediumFont.copyWith(
                                fontSize: 10, color: Color(0xffBABABA)),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('by Syed Talha Faiz',
                      style: mediumFont.copyWith(
                          fontSize: 9, color: Color(0xff737373))),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: Get.width/1,
                    height: Get.height/12,
                    // color: Colors.yellow,
                    child: ReadMoreText(
                      'When you don’t have the time to write a personal message to every customer, a review request text template is an efficient way to give your happy customers a voice.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      style: mediumFont.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8D8D8D)),
                      moreStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.amber,),
                      lessStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),


                  Divider(),

                  Row(
                    children: [
                      RatingBarIndicator(
                        direction: Axis.horizontal,
                        rating: 5,
                        itemSize: 20,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Jan 21,2021',
                        style: mediumFont.copyWith(
                            fontSize: 12, color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height:10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Haircut,Shave',
                        style: mediumFont.copyWith(
                            fontSize: 12, color: Colors.black),
                      ),
                      Spacer(),
                      Container(
                        height: 20,
                        width: 50,
                        margin: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xffEEEEEE)),
                        ),
                        child: Center(
                          child: Text(
                            'Hide',
                            style: mediumFont.copyWith(
                                fontSize: 10, color: Color(0xffBABABA)),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('by Syed Talha Faiz',
                      style: mediumFont.copyWith(
                          fontSize: 9, color: Color(0xff737373))),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: Get.width/1,
                    height: Get.height/12,
                    // color: Colors.yellow,
                    child: ReadMoreText(
                      'When you don’t have the time to write a personal message to every customer, a review request text template is an efficient way to give your happy customers a voice.',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      style: mediumFont.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8D8D8D)),
                      moreStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Colors.amber,),
                      lessStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CancelAppoimentTile extends StatelessWidget {
  const CancelAppoimentTile({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 110,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      padding: EdgeInsets.only(left: 12, right: 12, top:0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xffE2E0E0))),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: '4.8',
                          style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
                        ),
                        TextSpan(
                            text: '/5',
                            style: mediumFont.copyWith(fontSize: 15, color: Colors.black),
                      ),
              ]
                  )
              ),
              SizedBox(
                height: 4,
              ),
              RatingBarIndicator(
                direction: Axis.horizontal,
                rating: 5,
                itemSize: 20,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Based on 22 reviews',
                style: mediumFont.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: 6,
              ),

            ],
          ),

          SizedBox(
            width: 15,
          ),





          VerticalDivider(),

          SizedBox(
            width: 10,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [


            Container(
              width: 120,
              child: Row(
                children: [
                  Text(
                    '5',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(width: 5,),
                  Expanded(

                      child: Divider(color: Colors.amber,
                    thickness: 2,)),
                  SizedBox(width: 5,),
                  Text(
                    '25',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),

              Container(
              width: 120,
              child: Row(
                children: [
                  Text(
                    '4',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                      child: Divider(color: Colors.grey.withOpacity(0.5),
                        thickness: 2,)),
                  SizedBox(width: 5,),
                  Text(
                    '0',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),
              Container(
              width: 120,
              child: Row(
                children: [
                  Text(
                    '3',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                      child: Divider(color: Colors.grey.withOpacity(0.5),
                        thickness: 2,)),
                  SizedBox(width: 5,),
                  Text(
                    '0',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),
              Container(
              width: 120,
              child: Row(
                children: [
                  Text(
                    '2',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                      child: Divider(color: Colors.grey.withOpacity(0.5),
                        thickness: 2,)),
                  SizedBox(width: 5,),
                  Text(
                    '0',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),
              Container(
              width: 120,
              child: Row(
                children: [
                  Text(
                    '1',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                      child: Divider(color: Colors.grey.withOpacity(0.5),
                        thickness: 2,)),
                  SizedBox(width: 5,),
                  Text(
                    '0',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),



            ],
          ),

        ],
      ),
    );
  }
}

class CompletedAppoimentTile extends StatelessWidget {
  const CompletedAppoimentTile({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return ListView(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          padding: EdgeInsets.only(left: 12, right: 12, top: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0xffE2E0E0))),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.amber,),
                    child: Center(
                      child: Text(
                        "Completed : \$100.00",
                        style: mediumFont.copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),


                  RatingBarIndicator(
                    direction: Axis.horizontal,
                    rating: 5,
                    itemSize: 20,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),


                  Text(
                    "HairCut,Shave",
                    style: mediumFont.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "by Syed Talha Faiz",
                    style: mediumFont.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff272833)),
                  ),
                  SizedBox(
                    height: 4,
                  ),

                  Container(
                    width: Get.width/1.5,
                    height: Get.height/14,
                    // color: Colors.yellow,
                    child: ReadMoreText(
                      "When you don’t have the time to write a personal message to every customer,then you text her perosnal",
                      trimLines: 2,
                      colorClickableText: Colors.black,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      style: mediumFont.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8D8D8D)),
                      moreStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,),
                      lessStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),

                    ),
                  ),


                ],
              ),
              Spacer(
                flex: 4,
              ),
              VerticalDivider(),

              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'April',
                    style: mediumFont.copyWith(fontSize: 10),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '8',
                    style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '1:00 PM',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}