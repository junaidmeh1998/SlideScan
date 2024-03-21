import 'package:flutter/material.dart';

class CustomTextImageContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String assetImagePath;

  CustomTextImageContainer({
    required this.text1,
    required this.text2,
    required this.assetImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildLeftContainer(),
          _buildCenterContainer(),
          _buildRightContainer(),
        ],
      ),
    );
  }

  Widget _buildLeftContainer() {
    return Container(
      height: 55,
      width: 55,
      child: Image.asset(assetImagePath),
    );
  }

  Widget _buildCenterContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'franklin',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildRightContainer() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
