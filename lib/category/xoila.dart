import 'package:flutter/material.dart';
import 'package:simple_food_menu/category/mealItem.dart';
import '../dummy_data.dart';

class ItemXoila extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories!.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text("The Reciepe of $categoryTitle"),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            // return Text(categoryMeals[index].title.toString());
            return MealItem(
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
