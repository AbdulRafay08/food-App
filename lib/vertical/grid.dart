import 'dart:ui';

import 'package:assignment7/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OtherFoods extends StatefulWidget {
  const OtherFoods({Key? key}) : super(key: key);

  @override
  _OtherFoodsState createState() => _OtherFoodsState();
}

class _OtherFoodsState extends State<OtherFoods> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // padding: EdgeInsets.all(0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 20,
      children: [
        otheritems(),
        otheritems(),
        otheritems(),
        otheritems(),
      ],
    );
  }

  Widget otheritems() {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          //old code

          // Align(
          //   alignment: Alignment.topCenter,
          //   child: Container(
          //     width: double.infinity,
          //     // height: MediaQuery.of(context).size.height * 0.15,
          //     clipBehavior: Clip.antiAliasWithSaveLayer,
          //     decoration: const BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          //     ),
          //     child: Image.asset(
          //       'assets/pizza1.jpg',
          //     ),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: MediaQuery.of(context).size.height * 0.09,
          //     decoration: BoxDecoration(
          //         color: secondary,
          //         borderRadius:const  BorderRadius.only(
          //             bottomLeft: Radius.circular(10),
          //             bottomRight: Radius.circular(10))),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: [
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: const [
          //             Icon(Icons.star, size: 15),
          //             Icon(Icons.star, size: 15),
          //             Icon(Icons.star, size: 15),
          //             Icon(Icons.star, size: 15),
          //             Icon(Icons.star, size: 15),
          //           ],
          //         ),
          //         const Text(
          //           "Cheesy Pizza",
          //           style: TextStyle(fontWeight: FontWeight.bold),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  child: Image.asset(
                    'assets/pizza1.jpg',
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: primary.withOpacity(0.8), blurRadius: 2),
                      ],
                      color: bg,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star, size: 15),
                          Icon(Icons.star, size: 15),
                          Icon(Icons.star, size: 15),
                          Icon(Icons.star, size: 15),
                          Icon(Icons.star, size: 15),
                        ],
                      ),
                      const Text(
                        "Cheesy Pizza",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: -10,
            left: 105,
            child: CircleAvatar(
              backgroundColor: secondary,
              radius: 17,
              foregroundColor: Colors.white,
              child: const Text(
                "\$16",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
