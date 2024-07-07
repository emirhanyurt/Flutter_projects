import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:navigation/categories.dart';

import 'package:navigation/filters.dart';

import 'package:navigation/provider/favorites_provider.dart';
import 'package:navigation/provider/filter_provider.dart';
import 'package:navigation/provider/meals_provider.dart';
import 'package:navigation/widgets/main_drawer.dart';
import 'package:navigation/widgets/meals.dart';

const kInitialFilters = {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegan: false,
  Filter.vegatarian: false
};

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});
  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;
  
  Map<Filter, bool> _selectedFilters = kInitialFilters;


  

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
          MaterialPageRoute(builder: (ctx) =>  FiltersScreen(currentFilters: _selectedFilters,)));
          setState(() {
      _selectedFilters = result ?? kInitialFilters;
    });
    }
    
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
     final meals = ref.watch(mealsProvider);
    final availableMeals = meals.where((meal) {
      if(_selectedFilters[Filter.glutenFree]! && !meal.isGlutenFree){
        return false;
      }
      if(_selectedFilters[Filter.lactoseFree]! && !meal.isLactoseFree){
        return false;
      }
      if(_selectedFilters[Filter.vegatarian]! && !meal.isVegetarian){
        return false;
      }
      if(_selectedFilters[Filter.vegan]! && !meal.isVegan){
        return false;
      }
      return true;
    }).toList();
    Widget activePage = CategoriesScreen(
   
      availableMeals: availableMeals,
    );
    var activePageTitle = 'Kategoriler';
    if (_selectedPageIndex == 1) {
      final favoriteMeals = ref.watch(favoriteMealsProvider);
      activePage = MealsScreen(
        meals: favoriteMeals,
        
      );
      activePageTitle = 'Favoriler';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: DrawerScreen(
        onSelectScreen: _setScreen,
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: 'Kategoriler'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoriler'),
        ],
        onTap: _selectedPage,
      ),
    );
  }
}
