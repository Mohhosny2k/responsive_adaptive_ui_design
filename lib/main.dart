import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  ));
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
///////////////////////////////////// required

// scaleFactor
// responsive fontsize
// min max font size
//double getResponsiveFontSize({required double fontSize}){}

////////////////////////////rule

// scale factor = widthScreen / widthPlatform
// responsiveFontSize = fontSize * scalefactor

////////////////////////////////size

// mobile =400
//tablet = 700
// desktop = 1000

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scalefactor = getScaleFactor(context);
  double responsiveFontSize= fontSize * scalefactor;
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
          return width/ 400;
        }  else if(width < 900){
          return  width/ 700;
        } else {
          return   width/1000;
        }
}
