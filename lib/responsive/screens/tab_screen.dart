import 'package:flutter/material.dart';
import 'package:responsiveapp/component/colors.dart';
import 'package:responsiveapp/component/shared_component.dart';

class TabScreen extends StatelessWidget {
  TabScreen({Key? key}) : super(key: key);
  GlobalKey scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('T a b S c r e e n'),
        backgroundColor: appBarColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 120,
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 12,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(8),
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AppDrawerBody(
            color: Colors.deepPurple,
          ),
          const SizedBox(
            height: 30,
          ),
          AppDrawerBody(
            color: Colors.deepPurple,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 60,
            child: Builder(
              builder: (ctx) => ElevatedButton(
                onPressed: () {
                  Scaffold.of(ctx).openDrawer();
                },
                child: const Text("Open drawer"),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
