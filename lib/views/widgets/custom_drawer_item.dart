import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItemModel.icon,
        color: Colors.black,
      ),
      title: Text(
        drawerItemModel.title, //D A S H B O A R D
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
