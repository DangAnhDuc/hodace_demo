import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:hodace_app/models/real_estate.dart';
import 'package:hodace_app/screens/real_estate_detail.dart';
import 'package:hodace_app/theme/color/light_color.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<String> welcomeImages = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.jpg",
    "assets/image4.jpg",
    "assets/image5.jpg",
    "assets/image6.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller;
    return Scaffold(
      backgroundColor: LightColor.background,
      appBar: AppBar(
        title: Text(
          'dashboard',
        ),
      ),
      body: new Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: new TinderSwapCard(
            swipeUp: true,
            swipeDown: true,
            orientation: AmassOrientation.BOTTOM,
            totalNum: welcomeImages.length,
            stackNum: 3,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.width * 0.8,
            cardBuilder: (context, index) {
              RealEstate realEstate = realEstates[index];
              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=>RealEstateDetail(realEstate: realEstate,))),
                child: Hero(
                  tag: realEstate.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      width: 180,
                      height: 180,
                      image: AssetImage(realEstate.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            cardController: controller = CardController(),
            swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
              if (align.x < 0) {
                //Card is LEFT swiping
              } else if (align.x > 0) {
                //Card is RIGHT swiping
              }
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientation, int index) {},
          ),
        ),
      ),
    );
  }
}
