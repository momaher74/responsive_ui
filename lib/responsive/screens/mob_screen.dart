import 'package:flutter/material.dart';
import 'package:responsiveapp/component/colors.dart';
import 'package:responsiveapp/component/shared_component.dart';

class MobScreen extends StatelessWidget {
  const MobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        title: const Text('M o b s c r e e n'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,

              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(8),
                  color: Colors.red,
                ),
              ),
            ),
          ) ,
          const SizedBox(height: 30,) ,
           AppDrawerBody( color: Colors.deepPurple,) ,
          const SizedBox(height: 30,) ,
        ],
      ),
    );
  }
}
