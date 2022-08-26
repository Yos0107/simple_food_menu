import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_food_menu/model/meal.dart';

class MealItem extends StatelessWidget {
  // const MealItem(
  //     {Key? key,
  //     required this.title,
  //     required this.imageUrl,
  //     required this.duration,
  //     required this.complexity,
  //     required this.affordability})
  //     : super(key: key);
  final String? title;
  final String? imageUrl;
  final int? duration;
  final Complexity? complexity;
  final Affordability? affordability;

  MealItem(
      {@required this.affordability,
      @required this.title,
      @required this.imageUrl,
      @required this.complexity,
      @required this.duration});

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectMeal();
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  child: Image.network(
                    imageUrl!,
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
