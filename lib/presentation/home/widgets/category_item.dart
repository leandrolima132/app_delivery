import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onCategorySelected;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCategorySelected, // 🔥 Navega quando clicado
      child: Container(
        width: 200,
        margin: const EdgeInsets.only(right: 16.0),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 30),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
