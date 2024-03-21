import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scan/Auth/signup.dart';

import '../buttons/signinbutton.dart';
import '../widgets/textformfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  //Text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "SlideScan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'franklin',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Land Slide Detection System",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'franklin',
                fontSize: 18,
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
        //child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              //Padding(
              ///  padding: const EdgeInsets.only(left: 20),
              //  child:
              Container(
                  width: 250,
                  height: 250,
                  child: Image.asset("assets/Artboard 1.png")),
              //),
              SizedBox(
                height: 10,
              ),
              textformfield(
                labeltext: 'Username',
                hinttext: 'Username',
                controller: usernameController,
                obscureText: false,
              ),
              SizedBox(
                height: 25,
              ),
              textformfield(
                  labeltext: 'Password',
                  controller: passwordController,
                  hinttext: 'Password',
                  obscureText: true),
              SizedBox(
                height: 30,
              ),
              SignInButton(),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
                child: Text(
                  "or SIGNUP",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        //),
      ),
    );
  }
}
