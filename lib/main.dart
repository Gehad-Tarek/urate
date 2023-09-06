import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:urate/screens/bottom_nav_bar_design.dart';
import 'package:urate/screens/comments_screen/comments_screen.dart';
import 'package:urate/screens/intro_screen/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DevicePreview(
        enabled: true,
        builder: (BuildContext context) {
          return MaterialApp(
            useInheritedMediaQuery: true,
            builder: DevicePreview.appBuilder,
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            routes: {

            },
            home: CommentsScreen()
            // BottomNavBarDesign(),
          );
        });
  }
}
