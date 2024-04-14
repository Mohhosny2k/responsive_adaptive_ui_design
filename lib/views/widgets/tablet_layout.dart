import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/views/widgets/custom_list.dart';

import 'custom_list_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: SizedBox(height: 16,),
        ),
    
    CustomList(),
       CustomSliverListView(),
      ],
    );
  }
}