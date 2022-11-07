import 'package:flutter/material.dart';

import 'colors.dart';

class AppDrawerBody extends StatelessWidget {
  AppDrawerBody({Key? key, required this.color}) : super(key: key);
  Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          color: color,
          height: 40,
          width: double.infinity,
        ),
        Container(
          margin: const EdgeInsets.all(5),
          color: color,
          height: 40,
          width: double.infinity,
        ),
        Container(
          margin: const EdgeInsets.all(5),
          color: color,
          height: 40,
          width: double.infinity,
        ),
        Container(
          margin: const EdgeInsets.all(5),
          color: color,
          height: 40,
          width: double.infinity,
        ),
      ],
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: AppDrawerBody(
        color: Colors.white,
      ),
      backgroundColor: drawerColor,
    );
  }
}
