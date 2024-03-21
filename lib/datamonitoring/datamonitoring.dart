import 'package:flutter/material.dart';

import '../widgets/CustomTextImageContainer.dart';

class Data extends StatelessWidget {
  const Data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        leading: Image.asset("assets/blue backgrnd 4.jpg"),
        centerTitle: true,
        title: Text(
          "DATA MONITORING",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: 'franklin',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
                color: Colors.blue.shade500,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade300,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Icon(
                          Icons.thermostat, // Icon you want to display
                          size: 40, // Size of the icon
                          color: Colors.white, // Color of the icon
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "50ºC",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'franklin',
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          "TEMP",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade300,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Icon(
                          Icons.opacity, // Icon you want to display
                          size: 40, // Size of the icon
                          color: Colors.white, // Color of the icon
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "50%",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'franklin',
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          "HUMIDITY",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 370,
            width: MediaQuery.of(context).size.width * 0.75,
            child: ListView(
              children: [
                CustomTextImageContainer(
                    text1: 'MOISTURE',
                    text2: 'DETECTION',
                    assetImagePath: 'assets/blue backgrnd 3.jpg'),
                SizedBox(
                  height: 15,
                ),
                CustomTextImageContainer(
                    text1: 'MOISTURE',
                    text2: 'DETECTION',
                    assetImagePath: 'assets/blue backgrnd 3.jpg'),
                SizedBox(
                  height: 15,
                ),
                CustomTextImageContainer(
                    text1: 'MOISTURE',
                    text2: 'DETECTION',
                    assetImagePath: 'assets/blue backgrnd 3.jpg'),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/Artboard 1.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "SlideScan",
                        style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'franklin',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Land Slide Detection System",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontFamily: 'franklin',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
