import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("🛒 My Orders")),
      body: Center(child: Text("No orders placed yet.")),
      bottomNavigationBar: BottomNavBar(currentIndex: 1),
    );
  }
}
