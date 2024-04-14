import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_ui_design/views/widgets/adaptive_layout.dart';
import 'desktop_layout.dart';
import 'mobile_layout.dart';
import 'tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: AdaptiveLayout(
            mobileLayout: MobileLayout(),
            tabletLayout: TabletLayout(),
            desktopLayout: DesktopLayout()));
  }
}
