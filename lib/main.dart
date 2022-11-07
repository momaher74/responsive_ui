import 'package:flutter/material.dart';
import 'package:responsiveapp/responsive/responsive_layout.dart';
import 'package:responsiveapp/responsive/screens/desktopScreen.dart';
import 'package:responsiveapp/responsive/screens/mob_screen.dart';
import 'package:responsiveapp/responsive/screens/tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        desktopScreen: const DesktopScreen(),
        mobScreen: const MobScreen(),
        tabScreen: TabScreen(),
      ) ,
    );
  }
}