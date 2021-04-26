import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys_owner/views/screens/profile/view_comments.dart';
import 'package:ozys_owner/views/widgets/appBar.dart';



class portfolio extends StatelessWidget {
  const portfolio({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        centerTitle: true,
        title: "Portfolio ",
        height: 70,
        action: SizedBox(),
        leading: Icon(
          Icons.arrow_back_ios,
        ),


      ),
      body: Container(
        height: Get.height,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return PortfolioTile();
            }),
      ),
    );
  }
}

class PortfolioTile extends StatelessWidget {
  const PortfolioTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.only(left: 12, right: 13),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        semanticContainer: true,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/images/workplace.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 30,
                color: Colors.black.withOpacity(0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('4', style: TextStyle(color: Colors.white)),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(ViewComments());
                          },
                          child: Icon(
                            Icons.message,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('0', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Row(
                      children: [

                        Icon(
                          Icons.share_sharp,
                          color: Colors.white,
                          size: 18,
                        ),

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReviewTab extends StatelessWidget {
  const ReviewTab({
    Key key,
    @required this.boldFonts,
  }) : super(key: key);

  final TextStyle boldFonts;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    var data = '5';
    var data2 = '22';
    return Container(
      width: Get.width,
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.only(left: 12, right: 14, top: 12),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' 5.0/5',
                      style: boldFonts.copyWith(fontSize: 12),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // StarRating(
                    //   color: Colors.yellow,
                    //   onRatingChanged: (valu) {},
                    //   rating: 2.5,
                    //   starCount: 5,
                    // ),
                    SizedBox(
                      height: 6,
                    ),
                    Text('Based on 22 reviews')
                  ],
                ),
                Spacer(),
                VerticalDivider(),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ratingShowWidget(data, data2, 100),
                    ratingShowWidget('4', data2, 80),
                    ratingShowWidget('3', data2, 50),
                    ratingShowWidget('2', data2, 40),
                    ratingShowWidget('1', data2, 10),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12, right: 13, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // StarRating(
                    //   color: Colors.yellow,
                    //   onRatingChanged: (value) {},
                    //   rating: 4,
                    //   starCount: 5,
                    // ),
                    Spacer(),
                    Text(
                      'Jan 21,2021',
                      style: mediumFont.copyWith(
                          fontSize: 12, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Haircut,Shave',
                  style: mediumFont.copyWith(fontSize: 12, color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('by Syed Talha Faiz',
                    style: mediumFont.copyWith(
                        fontSize: 9, color: Color(0xff737373))),
                SizedBox(
                  height: 8,
                ),
                Text(
                    'When you don’t have the time to write a personal message to every customer, a review request text template is an efficient way to give your happy customers a voice.',
                    style: mediumFont.copyWith(
                        fontSize: 12, color: Color(0xff3A3834))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget ratingShowWidget(String data, String data2, double percentage) {
    return Container(
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data),
              SizedBox(
                width: 6,
              ),
              Container(
                height: 3,
                width: percentage,
                color: Colors.yellow,
              ),
            ],
          ),
          Text(data2),
        ],
      ),
    );
  }
}