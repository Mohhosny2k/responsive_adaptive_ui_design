import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_ui_design/views/widgets/custom_item.dart';

import 'custom_item_2.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Expanded(child: CustomItem()),Expanded(child: CustomItem2())
      ],
    );
  }
}