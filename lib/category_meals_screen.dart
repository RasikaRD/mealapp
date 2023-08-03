import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen(   this.CategoryId,  this.CategoryTitle, {super.key});
  final String CategoryId;
  final String CategoryTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(CategoryTitle),
      ),
      body: const Center(
        child: Text('Meal data'),
      ),
    );
  }
}
