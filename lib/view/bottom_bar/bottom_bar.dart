import 'package:e_commerce_app_getx/view/fav/fav.dart';
import 'package:e_commerce_app_getx/view/home/home_screen.dart';
import 'package:e_commerce_app_getx/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../cart/cart_screen.dart';
import '../menu/menu.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> _screenList() {
    return [
      const MenuScreen(),
      const FavScreen(),
      const HomeScreen(),
      const CartScreen(),
      const Profile(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Iconsax.menu5),
        inactiveIcon: const Icon(Iconsax.menu),
        activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Iconsax.heart5),
        inactiveIcon: const Icon(Iconsax.heart),
        activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Iconsax.home5),
        inactiveIcon: const Icon(Iconsax.home),
        activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Iconsax.shopping_cart5),
        inactiveIcon: const Icon(Iconsax.shopping_cart),
        activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        inactiveIcon: const Icon(Iconsax.user),
        activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _screenList(),
      items: _navBarItems(),
      controller: controller,
      navBarStyle: NavBarStyle.style12,
    );
  }
}
