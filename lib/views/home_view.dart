import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/views/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_ui_design/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:scaffoldKey ,
      drawer:const CustomDrawer() ,
      backgroundColor: const Color(0xffDBDBDB),
      appBar: AppBar(
        backgroundColor: Colors.black,
       leading:GestureDetector(
        onTap: () {
          scaffoldKey.currentState!.openDrawer();
        },
        child: const Icon(Icons.menu,color: Colors.white,)),
      ),
      body:const HomeViewBody(),
    );
  }
}