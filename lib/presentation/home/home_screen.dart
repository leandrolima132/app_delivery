import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app/core/widgets/bottom_nav_bar.dart';
import 'package:mobile_app/presentation/home/view_model/home_viewmodel.dart';
import 'package:mobile_app/presentation/home/widgets/category_item.dart';

class HomeScreen extends StatefulWidget {
  final HomeViewModel viewModel;

  const HomeScreen({super.key, required this.viewModel});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.6);

  void _onCategorySelected(String route) {
    context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colors = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Olá, Fulano 👋",
            style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: colors.primary,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔍 Search Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar...",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: colors.surfaceVariant,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🏷 Categorias (com Navegação)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Categorias",
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),

            SizedBox(
              height: 140,
              child: PageView.builder(
                controller: _pageController,
                physics: const BouncingScrollPhysics(),
                itemCount: widget.viewModel.categories.length,
                itemBuilder: (context, index) {
                  return AnimatedBuilder(
                    animation: _pageController,
                    builder: (context, child) {
                      double scale = 1.0;
                      if (_pageController.position.haveDimensions) {
                        double pageOffset = _pageController.page! - index;
                        scale = (1 - (pageOffset.abs() * 0.2)).clamp(0.85, 1.0);
                      }

                      final category = widget.viewModel.categories[index];

                      return Transform.scale(
                        scale: scale,
                        child: SizedBox(
                          width: 180,
                          child: CategoryItem(
                            icon: category.icon,
                            label: category.label,
                            onCategorySelected: () => _onCategorySelected(
                                category.route), // 🔥 Navega ao tocar
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }
}
