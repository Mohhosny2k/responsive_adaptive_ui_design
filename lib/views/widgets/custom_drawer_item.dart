import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
     // contentPadding:const EdgeInsets.symmetric(horizontal: 32),
      leading: Icon(
        drawerItemModel.icon,
        color: Colors.black,
      ),
      title: Padding(
        padding:const  EdgeInsets.only(left: 16),
        child: Text(
          drawerItemModel.title, //D A S H B O A R D
          style:const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
