import 'package:assignment7/colors/colors.dart';
import 'package:flutter/material.dart';

class FoodItems extends StatefulWidget {
  const FoodItems({Key? key}) : super(key: key);

  @override
  _FoodItemsState createState() => _FoodItemsState();
}

class _FoodItemsState extends State<FoodItems> {
  List food = [
    'assets/shrimp1.png',
    'assets/beef.jpg',
    'assets/pizza1.jpg',
    'assets/lasagna.jpg',
  ];
  List foodName = [
    "Original Fried Shrimp",
    "Baked Beef",
    "Cheese Pizza",
    "Lasagna"
  ];
  List foodDetail = [
    "Original Fried Shrimp",
    "Baked Beef",
    "Cheese Pizza",
    "Lasagna"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //main container controlling listview height
      // padding: EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 20),
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: food.length,
          itemBuilder: (context, index) {
            return foods(food[index], foodName[index], foodDetail[index]);
          }),
    );
  }

  Widget foods(img, fName, fDetail) {
    return Container(
      // container controlling stack
      // container controlling stack
      width: MediaQuery.of(context).size.width * 0.38,
      height: MediaQuery.of(context).size.height * 0.3,
      margin: const EdgeInsets.only(right: 10),
      color: bg,

      child: Stack(
        children: [
          //1st widget of stack

          horCat1(fName, fDetail),

          //2nd widget of stack
          //food image

          horCat2(img),

          //3rd widget of price

          Positioned(
            top: 40,
            left: 80,
            child: CircleAvatar(
              backgroundColor: bg,
              radius: 19,
              foregroundColor: Colors.black,
              child: const Text("\$16",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }

  Widget horCat1(String fName, fDetail) {
    return Align(
      alignment: Alignment.bottomCenter,
      child:

          //bottom container inside stack having details

          Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: secondary),
        height: MediaQuery.of(context).size.height * 0.13,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        child: Column(
          //details of food inside container
          //details of food

          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              fDetail,
              style: TextStyle(
                  color: primary.withOpacity(0.7),
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                icons(),
                icons(),
                icons(),
                icons(),
                icons(),
              ],
            )
          ],
        ),
      ),
    );
  }

//another widget for star icons
  Widget icons() {
    return Icon(
      Icons.star,
      color: Colors.yellow.withOpacity(0.7),
      size: 12,
    );
  }

  Widget horCat2(img) {
    return Align(
      alignment: Alignment.center,
      child: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(img),
      ),
    );
  }
}
