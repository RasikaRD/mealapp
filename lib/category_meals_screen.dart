import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({super.key});

  // const CategoryMealsScreen(   this.CategoryId,  this.CategoryTitle, {super.key});
  // final String CategoryId;
  // final String CategoryTitle;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final String CategoryId = routeArgs['id']!;
    final String CategoryTitle= routeArgs['title']!;
    return Scaffold(
      appBar: AppBar(
        title: Text(CategoryTitle),
      ),
      body: const Center(
        child: Text('Meal data'),
      ),
    );
  }
}
