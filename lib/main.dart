import 'dart:developer';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'views/home_view.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
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
      home:const HomeView(),
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
  double responsiveFontSize = fontSize * scalefactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  log('base font size = $fontSize, scale factor = $scalefactor, responsive font size = $responsiveFontSize, lower limit = $lowerLimit, upper limit = $upperLimit    final font size ${responsiveFontSize.clamp(lowerLimit, upperLimit)}');
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
