import 'package:flutter/material.dart';
import '../../widgets/bottom_nav_bar.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("🛒 My welcome")),
      body: Center(child: Text("No orders placed yet.")),
      bottomNavigationBar: BottomNavBar(currentIndex: 1),
    );
  }
}
