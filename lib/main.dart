import 'package:flutter/material.dart';
import 'package:orange_juice/src/ui/authenticationScreens/splashScreen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      builder: DevicePreview.appBuilder,
      title: 'OrangeJuice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Tajawal',
      ),
      home: SplashScreen(),
    );
  }
}
