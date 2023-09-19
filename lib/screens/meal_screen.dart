import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealScreen extends StatelessWidget {
  const MealScreen(
      {super.key, required this.meal, required this.onToggleFavorite});

  final Meal meal;
  final void Function(Meal meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(meal.title),
        actions: [
          IconButton(
              onPressed: () {
                onToggleFavorite(meal);
              },
              
              icon: const Icon(Icons.favorite_border_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                clipBehavior: Clip.hardEdge,
                elevation: 2,
                child: Stack(children: [
                  FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: NetworkImage(meal.imageUrl),
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                  ),
                ]),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Ingredients',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  )),
              const SizedBox(
                height: 10,
              ),
              for (final ingredient in meal.ingredients)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_circle_down_rounded,
                          color: Colors.amberAccent),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        ingredient,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 243, 188, 188),
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              const SizedBox(
                height: 25,
              ),
              const Text('Steps',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  )),
              const SizedBox(
                height: 10,
              ),
              for (final step in meal.step)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_circle_down_rounded,
                          color: Colors.amberAccent),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(step,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 243, 188, 188),
                              fontSize: 18)),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
