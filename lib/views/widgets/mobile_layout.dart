
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/views/widgets/custom_list_view.dart';
import 'custom_sliver_grid.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: SizedBox(height: 16,),
        ),
    //     SliverToBoxAdapter(
    //       child: LayoutBuilder(
    //         builder: (context , constraints) {
    
    //           if(constraints.maxWidth > 600){
    //  //    return const CustomSliverGrid();
    //        return const CustomList();
    //           }else{
    //               return const CustomSliverGrid();
    //           }
    //         }
    //       ),
    //     ),
    CustomSliverGrid(),
       CustomSliverListView(),
      ],
    );
  }
}
