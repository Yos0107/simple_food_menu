import 'package:flutter/material.dart';
import 'package:simple_food_menu/category/categoryItem.dart';
import 'package:simple_food_menu/dummy_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Menu"),
        ),
        body: GridView(
          padding: EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: showList(),
        ));
  }
}

List<Widget> showList() {
  List<Widget> childs =
      foodCategories.map((e) => CategoryItem(e.color, e.title, e.id)).toList();
  return childs;
}
