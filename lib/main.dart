import 'package:flutter/material.dart';
import 'package:mealapp/categories_screen.dart';
import 'package:mealapp/category_meals_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MealApp',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'OpenSans',
        textTheme: ThemeData.light().textTheme.copyWith(
          displayLarge: const TextStyle(color: Colors.black),
          titleSmall:const TextStyle(color: Colors.amber),
          bodyLarge: const TextStyle(color: Colors.pink),
          titleMedium: const TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          )
        )
      ),
      // home: const CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/':(ctx) => const CategoriesScreen(),
        '/category-meals': (ctx) => const CategoryMealsScreen(),      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
   
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Meal App'),
//       ),
//       body: const Center(child: Text('Navigation Time')),
//     );
//   }
// }
