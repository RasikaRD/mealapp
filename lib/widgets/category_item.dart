import 'package:flutter/material.dart';
import 'package:mealapp/models/category.dart';
import 'package:mealapp/screens/category_meals_screen.dart';

class CtegoryItem extends StatelessWidget {
  // final String title;
  // final Color color;
  // final String id;
  final Category category;
  const CtegoryItem({
    super.key,
    required this.category, required this.onSelectCategory,
  });

  // CtegoryItem(this.title, this.color)
  // void selectCategory(BuildContext ctx){
  //   Navigator.of(ctx).pushNamed(
  //     '/category-meals',
  //     arguments: {'id':id, 'title':title}

  //  );
  // }
 
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: ShapeDecoration(
            color: category.color,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)))),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [color.withOpacity(0.7)],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomCenter,
        //   ),
        //   borderRadius: BorderRadius.circular(15),
        // ),
        // child: Text(title),
      ),
    );
  }
}
