import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatelessWidget {
  final StatefulNavigationShell currentChild;
  const CustomBottomNavigation({
    super.key,
    required this.currentChild,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentChild.currentIndex,
      onTap: (value) => currentChild.goBranch(value),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_max,
          ),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.handshake_outlined,
          ),
          label: 'Populares',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline,
          ),
          label: 'Favoritos',
        )
      ],
    );
  }
}
