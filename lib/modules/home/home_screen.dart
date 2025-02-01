import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/restaurant_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> restaurants = [
      {"name": "Pizza Express", "category": "Pizzeria"},
      {"name": "Sushi Place", "category": "Japanese"},
      {"name": "Burger House", "category": "Burger Joint"},
    ];

    return Scaffold(
      appBar: AppBar(title: Text("🍽️ Restaurants")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return RestaurantCard(
            name: restaurants[index]["name"]!,
            category: restaurants[index]["category"]!,
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 0),
    );
  }
}
