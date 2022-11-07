import 'package:flutter/material.dart';
import 'package:responsiveapp/component/shared_component.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Row(
        children: [
          const Expanded(
            flex: 2,
            child: AppDrawer(),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
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
                  ) ,
                  const SizedBox(
                    height: 30,
                  ),
                  AppDrawerBody(
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AppDrawerBody(
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ) ,
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: double.infinity,
            ),
          )

        ],
      ),
    );
  }
}
