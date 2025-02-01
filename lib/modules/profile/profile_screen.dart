import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("👤 Profile")),
      body: Center(child: Text("User Name\nEmail: user@email.com")),
      bottomNavigationBar: BottomNavBar(currentIndex: 2),
    );
  }
}
