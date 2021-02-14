import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height - 100;
    final screenWidth = MediaQuery.of(context).size.width;
    final textContainerHeight = screenHeight / 2.8;
    final titleContainerHeight = screenHeight / 10;

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: Column(
          children: [
            Container(
              height: screenHeight,
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                // fit: StackFit.expand,
                children: [
                  Positioned(
                      top: titleContainerHeight,
                      child: Container(
                          width: screenWidth,
                          height: textContainerHeight,
                          color: Colors.grey)),
                  Positioned(
                      bottom: titleContainerHeight,
                      width: screenWidth,
                      height: textContainerHeight,
                      child:
                          Container(width: 200, height: 200, color: Colors.lightGreen)),
                  Positioned(
                      top: 310,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            color: Colors.white),
                        width: 150,
                        height: 150,
                      )),
                  Positioned(
                      top: 325,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(100)),
                            color: Colors.red
                        ),
                        width: 120,
                        height: 120,
                        child: Material(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: InkWell(
                            customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)
                            ),
                            onTap: () {
                              print("yolo");
                            },
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// decoration: BoxDecoration(
// color: Colors.white,
// border: Border.all(color: Colors.grey),
// borderRadius: BorderRadius.circular(10)),
