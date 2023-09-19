import 'package:flutter/material.dart';
import 'package:mealapp/screens/tabs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MealApp',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.dark,
            seedColor: const Color.fromARGB(31, 88, 17, 17),
          ),
          fontFamily: 'OpenSans',
          textTheme: ThemeData.light().textTheme.copyWith(
              displayLarge: const TextStyle(color: Colors.black),
              titleSmall: const TextStyle(color: Colors.amber),
              bodyLarge: const TextStyle(color: Colors.pink),
              titleMedium: const TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ))),
      home: const TabsScreen(),
    );
  }
}
