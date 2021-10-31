import 'package:assignment7/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatItem extends StatefulWidget {
  const CatItem({Key? key}) : super(key: key);

  @override
  _CatItemState createState() => _CatItemState();
}

class _CatItemState extends State<CatItem> {
  List food = [
    'assets/shrimp1.png',
    'assets/beef.jpg',
    'assets/pizza1.jpg',
    'assets/lasagna.jpg',
    'assets/noodles.jpg'
  ];
  List foodName = ["Shrimp", "Beef", "Pizza", "Lasagna", "Noodles"];
  @override
  Widget build(BuildContext context) {
    return Container(
      //main container controlling listview horiz
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      height: MediaQuery.of(context).size.height * 0.040,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: food.length,
          itemBuilder: (context, index) {
            return cat(food[index], foodName[index]);
          }),
    );
  }

  Widget cat(food, foodName) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width * 0.20,
      decoration: BoxDecoration(
        color: secondary.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: CircleAvatar(
                radius: 8,
                backgroundImage: AssetImage(food),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              foodName,
              style: TextStyle(
                  fontSize: 10, color: secondary, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
