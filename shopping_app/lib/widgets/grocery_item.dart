import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shopping_app/data/categories.dart';
import 'package:shopping_app/firebase_config.dart';
import 'package:shopping_app/models/category.dart';

import 'package:shopping_app/models/grocery_item.dart';
import 'package:shopping_app/widgets/NewItem.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  List<GroceryItem> _groceryItems = [];
  var isLoading = true;
  String? error;
@override
  void initState() {
  
    super.initState();
    _loadItems();
  }
  void _loadItems() async {
    try {
       final url = Uri.https(
        firebaseApiKey,
        'shopping-list.json');
    final response = await http.get(url);
  
    if(response.body =='null'){
      setState(() {
        isLoading = false;
      });
      return;
    }
    final Map<String, dynamic> listData = json.decode(response.body);
    final List<GroceryItem> loadedItems = [];

    for (final item in listData.entries) {
      final category = categories.entries
          .firstWhere(
              (element) => element.value.title == item.value['category'])
          .value;
      loadedItems.add(GroceryItem(
          id: item.key,
          name: item.value['name'],
          quantity: item.value['quantity'],
          category: category));
    }
    setState(() {
      _groceryItems = loadedItems;
      isLoading = false;
    });
    } catch (_error) {
        setState(() {
         error = 'Failed to fetch data.';
        
      });
    }
   
  }

  void _addItem() async {
  /*  final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) => const NewItem(),
      ),
    );
    if (newItem == null) {
      return null;
    }

    setState(() {
      _groceryItems.add(newItem);
    });
    */
   final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) => const NewItem(),
      ));
    if(newItem == null){
      return;
    }
    setState(() {
      _groceryItems.add(newItem);
    });
  }
 
  void _removeItem(GroceryItem item) async {
    final index = _groceryItems.indexOf(item);
    setState(() {
      _groceryItems.remove(item);
    });
    final url = Uri.https(
        firebaseApiKey,
        'shopping-list/${item.id}.json');
        final response = await http.delete(url);
        if(response.statusCode >= 400){
      setState(() {
         _groceryItems.insert(index, item);
        
      });
     
    }
  }
  
  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Text('No items added yet'));
    if(isLoading){
      content = const Center(child: CircularProgressIndicator(),);
    }
    if (_groceryItems.isNotEmpty) {
      content = ListView.builder(
        itemCount: _groceryItems.length,
        itemBuilder: (ctx, index) => Dismissible(
          onDismissed: (direction) {
            _removeItem(_groceryItems[index]);
          },
          key: ValueKey(_groceryItems[index].id),
          child: ListTile(
              title: Text(_groceryItems[index].name),
              leading: Container(
                  width: 24,
                  height: 24,
                  color: _groceryItems[index].category.color),
              trailing: Text(_groceryItems[index].quantity.toString())),
        ),
      );
    }
   if(error != null){
    content = Center(child: Text(error!));
   }
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Groceries'),
          actions: [
            IconButton(onPressed: _addItem, icon: const Icon(Icons.add))
          ],
        ),
        body: content);
  }
}
