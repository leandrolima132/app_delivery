import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String category;

  const RestaurantCard({Key? key, required this.name, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(Icons.restaurant, color: Colors.orange),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(category),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // Navigate to restaurant details
        },
      ),
    );
  }
}
