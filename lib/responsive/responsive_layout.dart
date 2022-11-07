import 'package:flutter/material.dart';

import '../component/constant.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key ,  required this.mobScreen ,required this.tabScreen , required this.desktopScreen ,}) : super(key: key);
  final Widget mobScreen ;
  final Widget tabScreen ;
  final Widget desktopScreen ;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth<mobWidth) {
        return mobScreen ;

      } else if (constraints.maxWidth<tabWidth) {
        return tabScreen ;
      } else {
        return desktopScreen ;
      }
    });
  }
}
