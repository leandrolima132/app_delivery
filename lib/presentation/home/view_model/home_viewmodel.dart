import 'package:flutter/material.dart';
import 'package:mobile_app/domain/models/category_model.dart';
import 'dart:collection';

import 'package:mobile_app/presentation/home/widgets/category_item.dart';

class Restaurant {
  final String name;
  final String category;

  Restaurant({required this.name, required this.category});
}

class HomeViewModel extends ChangeNotifier {
  final List<Restaurant> _restaurants = [
    Restaurant(name: "Pizza Express", category: "Pizzaria"),
    Restaurant(name: "Sushi Place", category: "Japonesa"),
    Restaurant(name: "Burger House", category: "Hamburgueria"),
  ];

  final List<CategoryModel> _categories = [
    CategoryModel(icon: Icons.local_pizza, label: "Almoço", route: "/almoco"),
    CategoryModel(icon: Icons.rice_bowl, label: "Jantar", route: "/jantar"),
    CategoryModel(
        icon: Icons.breakfast_dining, label: "Café da Manhã", route: "/cafe"),
    CategoryModel(
        icon: Icons.icecream, label: "Sobremesa", route: "/sobremesa"),
  ];

  UnmodifiableListView<Restaurant> get restaurants =>
      UnmodifiableListView(_restaurants);

  UnmodifiableListView<CategoryModel> get categories =>
      UnmodifiableListView(_categories);
}
