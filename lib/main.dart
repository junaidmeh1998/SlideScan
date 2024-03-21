import 'package:flutter/material.dart';

import 'Auth/signin.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ),
  );
}

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});
//   //Text editing controller
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(
//         SystemUiOverlayStyle(statusBarColor: Colors.transparent));
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "SlideScan",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 30,
//                 fontFamily: 'franklin',
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               "Land Slide Detection System",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontFamily: 'franklin',
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(
//                 40), // Adjust this value for the radius you desire
//           ),
//         ),
//         toolbarHeight: 140,
//         backgroundColor: Colors.blue,
//       ),
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         //child: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 10,
//               ),
//               //Padding(
//               ///  padding: const EdgeInsets.only(left: 20),
//               //  child:
//               Container(
//                   width: 250,
//                   height: 250,
//                   child: Image.asset("assets/Artboard 1.png")),
//               //),
//               SizedBox(
//                 height: 10,
//               ),
//               textformfield(
//                 labeltext: 'Username',
//                 hinttext: 'Username',
//                 controller: usernameController,
//                 obscureText: false,
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               textformfield(
//                   labeltext: 'Password',
//                   controller: passwordController,
//                   hinttext: 'Password',
//                   obscureText: true),
//               SizedBox(
//                 height: 30,
//               ),
//               SignInButton(),
//               SizedBox(
//                 height: 15,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => SignUpPage(),
//                     ),
//                   );
//                 },
//                 child: Text(
//                   "or SIGNUP",
//                   style: TextStyle(
//                       color: Colors.blue, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         //),
//       ),
//     );
//   }
// }
// // textf5e3d
//
// class textformfield extends StatelessWidget {
//   final controller;
//   final String hinttext;
//   final String labeltext;
//   final bool obscureText;
//
//   textformfield(
//       {super.key,
//       required this.controller,
//       required this.hinttext,
//       required this.obscureText,
//       required this.labeltext});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 30, right: 30),
//       child: TextFormField(
//         controller: controller,
//         obscureText: obscureText,
//         cursorColor: Colors.white,
//         decoration: InputDecoration(
//           labelText: labeltext,
//           hintText: hinttext,
//           filled: true,
//           fillColor: Colors.blue,
//           hintStyle: TextStyle(
//             color: Colors.white,
//           ),
//           labelStyle: TextStyle(color: Colors.white),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.white),
//             borderRadius: BorderRadius.circular(25),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(25),
//             borderSide: BorderSide(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// ////////////////////////////
//
// class SignInButton extends StatelessWidget {
//   const SignInButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       height: 50,
//       child: ElevatedButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Data(),
//             ),
//           );
//         },
//         style: ElevatedButton.styleFrom(
//           foregroundColor: Colors.white, backgroundColor: Colors.blue,
//           elevation: 15, // Shadow elevation
//           shadowColor: Colors.black, // Text color
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(100.0), // Border radius
//             side: BorderSide(color: Colors.white), // Border color
//           ),
//         ),
//         child: Text(
//           'LOGIN',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
//
// //////////////////
// class SignUpPage extends StatelessWidget {
//   SignUpPage({super.key});
//   //Text editing controller
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();
//   final confirmpasswordController = TextEditingController();
//   final emailController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "Welcome To",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontFamily: 'franklin',
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 5,
//             ),
//             Text(
//               "SlideScan",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 35,
//                 fontFamily: 'franklin',
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               "Land Slide Detection System",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontFamily: 'franklin',
//                 fontSize: 13,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(
//                 40), // Adjust this value for the radius you desire
//           ),
//         ),
//         toolbarHeight: 140,
//         backgroundColor: Colors.blue,
//       ),
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: 15,
//                 ),
//
//                 Container(
//                     width: 150,
//                     height: 150,
//                     child: Image.asset("assets/Artboard 1.png")),
//                 // ),
//                 textformfield(
//                   labeltext: 'Username',
//                   hinttext: 'Username',
//                   controller: usernameController,
//                   obscureText: false,
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 textformfield(
//                     controller: emailController,
//                     hinttext: 'Email',
//                     obscureText: false,
//                     labeltext: 'Email'),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 textformfield(
//                     labeltext: 'Password',
//                     controller: passwordController,
//                     hinttext: 'Password',
//                     obscureText: true),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 textformfield(
//                     controller: confirmpasswordController,
//                     hinttext: 'Confirm Password',
//                     obscureText: true,
//                     labeltext: 'Confirm Password'),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 SignUpButton(),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => LoginPage(),
//                       ),
//                     );
//                   },
//                   child: Text(
//                     "or LOGIN",
//                     style: TextStyle(
//                         color: Colors.blue, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// //////////////////////
//
//
//
// class Data extends StatelessWidget {
//   const Data({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         //automaticallyImplyLeading: false,
//         leading: Image.asset("assets/blue backgrnd 4.jpg"),
//         centerTitle: true,
//         title: Text(
//           "DATA MONITORING",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 25,
//             fontFamily: 'franklin',
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.blue,
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 120,
//             width: MediaQuery.of(context).size.height * 1,
//             decoration: BoxDecoration(
//                 color: Colors.blue.shade500,
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(40),
//                     bottomRight: Radius.circular(40))),
//             child: Row(
//               //crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                           color: Colors.blue.shade300,
//                           borderRadius: BorderRadius.circular(50)),
//                       child: Center(
//                         child: Icon(
//                           Icons.thermostat, // Icon you want to display
//                           size: 40, // Size of the icon
//                           color: Colors.white, // Color of the icon
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "50ºC",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'franklin',
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16),
//                         ),
//                         Text(
//                           "TEMP",
//                           style: TextStyle(color: Colors.white, fontSize: 14),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                           color: Colors.blue.shade300,
//                           borderRadius: BorderRadius.circular(50)),
//                       child: Center(
//                         child: Icon(
//                           Icons.opacity, // Icon you want to display
//                           size: 40, // Size of the icon
//                           color: Colors.white, // Color of the icon
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "50%",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: 'franklin',
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16),
//                         ),
//                         Text(
//                           "HUMIDITY",
//                           style: TextStyle(color: Colors.white, fontSize: 14),
//                         ),
//                       ],
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           Container(
//             height: 370,
//             width: MediaQuery.of(context).size.width * 0.75,
//             child: ListView(
//               children: [
//                 CustomTextImageContainer(
//                     text1: 'MOISTURE',
//                     text2: 'DETECTION',
//                     assetImagePath: 'assets/blue backgrnd 3.jpg'),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 CustomTextImageContainer(
//                     text1: 'MOISTURE',
//                     text2: 'DETECTION',
//                     assetImagePath: 'assets/blue backgrnd 3.jpg'),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 CustomTextImageContainer(
//                     text1: 'MOISTURE',
//                     text2: 'DETECTION',
//                     assetImagePath: 'assets/blue backgrnd 3.jpg'),
//               ],
//             ),
//           ),
//           Padding(
//               padding: EdgeInsets.only(
//                 left: 20,
//                 right: 20,
//               ),
//               child: Row(
//                 children: [
//                   Container(
//                     height: 100,
//                     width: 100,
//                     child: Image.asset('assets/Artboard 1.png'),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         "SlideScan",
//                         style: TextStyle(
//                           color: Colors.blue,
//                           fontFamily: 'franklin',
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         "Land Slide Detection System",
//                         style: TextStyle(
//                           color: Colors.blue,
//                           fontSize: 14,
//                           fontFamily: 'franklin',
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               )),
//         ],
//       ),
//     );
//   }
// }
