import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_app/routing/app_routes.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;

  const BottomNavBar({super.key, required this.currentIndex});

  static final List<_NavItem> _navItems = [
    _NavItem(
        icon: Icons.home_outlined,
        activeIcon: Icons.home,
        label: 'Home',
        route: Routes.home),
    _NavItem(
        icon: Icons.favorite_border,
        activeIcon: Icons.favorite,
        label: 'Pedidos',
        route: Routes.orders),
    _NavItem(
        icon: Icons.person_outline,
        activeIcon: Icons.person,
        label: 'Perfil',
        route: Routes.profile(':userId')),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        final route = _navItems[index].route;
        if (route != GoRouterState.of(context).uri.toString()) {
          context.go(route);
        }
      },
      elevation: 5,
      backgroundColor: Colors.white,
      indicatorColor: Colors.blue.shade100,
      destinations: _navItems.map((item) {
        final isSelected = _navItems.indexOf(item) == currentIndex;
        return NavigationDestination(
          icon: Icon(isSelected ? item.activeIcon : item.icon),
          label: item.label,
        );
      }).toList(),
    );
  }
}

class _NavItem {
  final IconData icon;
  final IconData activeIcon;
  final String label;
  final String route;

  _NavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.route,
  });
}
