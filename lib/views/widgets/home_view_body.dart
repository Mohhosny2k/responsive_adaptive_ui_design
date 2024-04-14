import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_ui_design/views/widgets/custom_list.dart';
import 'package:responsive_adaptive_ui_design/views/widgets/custom_list_view.dart';

import 'custom_sliver_grid.dart';
import 'desktop_layout.dart';
import 'mobile_layout.dart';
import 'tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileLayout();
        }  else if(constraints.maxWidth < 900){
          return const TabletLayout();
        } else {
          return const DesktopLayout();
        }
      }),
    );
  }
}
