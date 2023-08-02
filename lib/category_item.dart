import 'package:flutter/material.dart';

class CtegoryItem extends StatelessWidget {
  final String title;
  final Color color;
  const CtegoryItem(this.title, this.color, {super.key});

  // CtegoryItem(this.title, this.color)

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration:  ShapeDecoration(
          color: color,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)))),
      child: Text(title,
      style: Theme.of(context).textTheme.titleMedium,),
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [color.withOpacity(0.7)],
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomCenter,
      //   ),
      //   borderRadius: BorderRadius.circular(15),
      // ),
      // child: Text(title),
    );
  }
}
