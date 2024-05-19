import 'package:e_commerce_app_getx/view/menu/components/icon_text_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GetX E-Commerce App",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: <Widget>[
          IconTextIcon(
            text: 'DashBoard',
            firstIcon: Iconsax.menu,
            secondIcon: Iconsax.arrow_right_3,
          ),
          IconTextIcon(
            text: 'Product',
            firstIcon: Iconsax.shopping_bag,
            secondIcon: Iconsax.arrow_right_3,
          ),
          IconTextIcon(
            text: 'mail',
            firstIcon: Iconsax.sms,
            secondIcon: Iconsax.arrow_right_3,
          ),
          IconTextIcon(
            text: 'Campaigns',
            firstIcon: Iconsax.flag,
            secondIcon: Iconsax.arrow_right_3,
          ),
          IconTextIcon(
            text: 'Calendar',
            firstIcon: Iconsax.calendar,
            secondIcon: Iconsax.arrow_right_3,
          ),
          IconTextIcon(
            text: 'Contacts',
            firstIcon: Iconsax.user,
            secondIcon: Iconsax.arrow_right_3,
          ),
          Divider(),
          Text(
            "Account",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          IconTextIcon(
            text: 'Notifications',
            firstIcon: Iconsax.notification,
            secondIcon: Iconsax.arrow_right_3,
          ),
          IconTextIcon(
            text: 'Chats',
            firstIcon: Iconsax.message,
            secondIcon: Iconsax.arrow_right_3,
          ),
          IconTextIcon(
            text: 'Settings',
            firstIcon: Iconsax.settings,
            secondIcon: Iconsax.arrow_right_3,
          ),
        ],
      ),
    );
  }
}
