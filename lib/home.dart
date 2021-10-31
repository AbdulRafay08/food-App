import 'package:assignment7/colors/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'horizontal/categories.dart';
import 'horizontal/category2.dart';
import 'vertical/grid.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.more,
          color: secondary,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/shrimp1.png'),
            ),
          ),
        ],
        shadowColor: bg,
        backgroundColor: bg,
        toolbarHeight: 50,
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
            ),
            color: primary,
            iconSize: 25,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.collections_bookmark,
            ),
            color: primary,
            iconSize: 25,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.access_time,
            ),
            color: primary,
            iconSize: 25,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
            ),
            color: primary,
            iconSize: 25,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: Column(
              children: [
                location(),
                searchbar(),
                text("Food ", "Categories"),
                const CatItem(),
                text("Favourite", " Foods"),
                const FoodItems(),
                text("Other", "Foods"),
                const SizedBox(
                  height: 18,
                ),
                const OtherFoods()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget searchbar() {
    return Container(
      margin: const EdgeInsets.only(top: 18, bottom: 20),
      height: MediaQuery.of(context).size.height * 0.070,
      width: MediaQuery.of(context).size.width * 0.92,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: secondary.withOpacity(0.1)),
      child: TextField(
        style: TextStyle(color: primary),
        cursorColor: primary,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: primary,
            ),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: const TextStyle(fontSize: 17)),
      ),
    );
  }
}

Widget text(t1, t2) {
  return Row(
    children: [
      Text(
        t1,
        style: TextStyle(
            color: secondary, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      Text(
        t2,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ],
  );
}

Widget location() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.location_on,
        color: secondary,
        size: 18,
      ),
      const Text(
        "Denpasar, IDN",
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
      ),
      Icon(
        Icons.keyboard_arrow_down_sharp,
        size: 20,
        color: primary,
      ),
    ],
  );
}
