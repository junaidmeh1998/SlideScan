import 'package:flutter/material.dart';
import 'package:scan/Auth/signin.dart';

import '../buttons/signupbutton.dart';
import '../widgets/textformfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  //Text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome To",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'franklin',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "SlideScan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontFamily: 'franklin',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Land Slide Detection System",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'franklin',
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
                40), // Adjust this value for the radius you desire
          ),
        ),
        toolbarHeight: 140,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),

                Container(
                    width: 150,
                    height: 150,
                    child: Image.asset("assets/Artboard 1.png")),
                // ),
                textformfield(
                  labeltext: 'Username',
                  hinttext: 'Username',
                  controller: usernameController,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15,
                ),
                textformfield(
                    controller: emailController,
                    hinttext: 'Email',
                    obscureText: false,
                    labeltext: 'Email'),
                SizedBox(
                  height: 15,
                ),
                textformfield(
                    labeltext: 'Password',
                    controller: passwordController,
                    hinttext: 'Password',
                    obscureText: true),
                SizedBox(
                  height: 15,
                ),
                textformfield(
                    controller: confirmpasswordController,
                    hinttext: 'Confirm Password',
                    obscureText: true,
                    labeltext: 'Confirm Password'),
                SizedBox(
                  height: 10,
                ),
                SignUpButton(),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    "or LOGIN",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
