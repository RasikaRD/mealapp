import 'package:flutter/material.dart';
import 'package:mealapp/screens/tabs.dart';
import 'package:mealapp/widgets/main_drawer.dart';

enum Filter { glutenFree, lactoFree, vege, vegan }

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key, required this.currentFilters});

  final Map<Filter, bool> currentFilters;

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoFreeFilterSet = false;
  var _vegeFilterSet = false;
  var _veganFilterSet = false;

  @override

  void initState() {
    super.initState();
    _glutenFreeFilterSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoFreeFilterSet = widget.currentFilters[Filter.lactoFree]!;
    _vegeFilterSet = widget.currentFilters[Filter.vege]!;
    _veganFilterSet = widget.currentFilters[Filter.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: ((identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == 'Meals') {
      //     Navigator.of(context).pushReplacement(
      //         MaterialPageRoute(builder: ((context) => const TabsScreen())));
      //   }
      // })),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop({
            Filter.glutenFree: _glutenFreeFilterSet,
            Filter.lactoFree: _lactoFreeFilterSet,
            Filter.vege: _vegeFilterSet,
            Filter.vegan: _veganFilterSet,
          });
          return false;
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              SwitchListTile(
                value: _glutenFreeFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _glutenFreeFilterSet = isChecked;
                  });
                },
                title: Text(
                  'Gluten free',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                subtitle: Text(
                  'Only Include gluten free meals.',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                activeColor: Colors.greenAccent,
                contentPadding: const EdgeInsets.only(left: 25, right: 15),
              ),
              SwitchListTile(
                value: _lactoFreeFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _lactoFreeFilterSet = isChecked;
                  });
                },
                title: Text(
                  'Lactose free',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                subtitle: Text(
                  'Only Include Lactose free meals.',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                activeColor: Colors.greenAccent,
                contentPadding: const EdgeInsets.only(left: 25, right: 15),
              ),
              SwitchListTile(
                value: _vegeFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _vegeFilterSet = isChecked;
                  });
                },
                title: Text(
                  'Vegetarian',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                subtitle: Text(
                  'Only Include vegetarian meals.',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                activeColor: Colors.greenAccent,
                contentPadding: const EdgeInsets.only(left: 25, right: 15),
              ),
              SwitchListTile(
                value: _veganFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _veganFilterSet = isChecked;
                  });
                },
                title: Text(
                  'Vegan',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                subtitle: Text(
                  'Only Include vegan meals.',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                activeColor: Colors.greenAccent,
                contentPadding: const EdgeInsets.only(left: 25, right: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
