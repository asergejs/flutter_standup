import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> yesterdayOptions = ["I was jerking dick", "I was playing wow", "I was drinking beer"];
  List<String> todayOptions = ["I will continue", "I will slap your mom", "I will do nothing"];
  String _yesterdayTitle;
  String _todayTitle;

  @override
  void initState() {
    _changeTitles();
    super.initState();
  }


  void _changeTitles() {
    setState(() {
      _yesterdayTitle = (yesterdayOptions..shuffle()).first;
      _todayTitle = (todayOptions..shuffle()).first;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height - 100;
    final screenWidth = MediaQuery.of(context).size.width - 40;
    final textContainerHeight = screenHeight / 2.7;
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
                    top: 10,
                    child: Text(
                      "YESTERDAY...",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Text(
                      "TODAY...",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Positioned(
                      top: titleContainerHeight,
                      child: Container(
                        margin: EdgeInsets.only(left: 40, right: 40),
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: screenWidth,
                        height: textContainerHeight,
                        child: Center(
                            child: Text(
                              _yesterdayTitle,
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                      )),
                  Positioned(
                      bottom: titleContainerHeight,
                      width: screenWidth,
                      height: textContainerHeight,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 200,
                        height: 200,
                        child: Center(
                            child: Text(
                              _todayTitle,
                              style: TextStyle(color: Colors.white, fontSize: 30),
                            )),
                      )),
                  Positioned(
                      top: 320,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            color: Colors.white),
                        width: 150,
                        height: 150,
                      )),
                  Positioned(
                      top: 335,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            color: Colors.red),
                        width: 120,
                        height: 120,
                        child: Material(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: InkWell(
                            customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                            onTap: () {
                              _changeTitles();
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
