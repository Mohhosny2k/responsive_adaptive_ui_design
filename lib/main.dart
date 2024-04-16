import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    )
   );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //useInheritedMediaQuery: true,
       builder: DevicePreview.appBuilder,
       locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      title: 'Responsive and Adaptive UI Design',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeView(),
    );
  }
}
// scaleFactor 
// responsive fontsize
// min max font size
//double getResponsiveFontSize({required double fontSize}){}


// scale factor = widthScreen / widthPlatform
// responsiveFontSize = fontSize * scalefactor