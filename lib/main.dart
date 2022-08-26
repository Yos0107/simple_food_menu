import 'package:flutter/material.dart';
import 'package:simple_food_menu/Views/home.dart';
import 'package:simple_food_menu/category/xoila.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey, canvasColor: Colors.grey[200]),
      home: const HomeScreen(),
      routes: {
        'xoila': (context) => ItemXoila(),
      },
    );
  }
}
