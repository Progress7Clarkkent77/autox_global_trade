// import 'package:autox_global_trade/home/User/user_desktop.dart';
// //import 'package:autox_global_trade/home/user_home_test.dart';
// import 'package:flutter/material.dart';

// import 'auth.dart';
// //import 'home_page.dart';

// /// UI of Google Sign-In button
// class GoogleButton extends StatefulWidget {
//   @override
//   _GoogleButtonState createState() => _GoogleButtonState();
// }

// class _GoogleButtonState extends State<GoogleButton> {
//   bool _isProcessing = false;

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: ShapeDecoration(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//           side: BorderSide(color: Colors.transparent, width: 3),
//         ),
//         color: Colors.white,
//       ),
//       child: OutlinedButton(
//         style: OutlinedButton.styleFrom(
//           foregroundColor: Colors.red.shade100,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//             side: BorderSide(color: Colors.red.shade100, width: 3),
//           ),
//           elevation: 0,
//         ),
//         onPressed: () async {
//           setState(() {
//             _isProcessing = true;
//           });
//           await signInWithGoogle().then((result) {
//             print(result);
//             if (result != null) {
//               Navigator.of(context).pop();

//               /// for navigate to Home page after login in
//               Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(
//                   fullscreenDialog: true,
//                   builder: (context) => const UserHomeDesktop(),
//                 ),
//               );
//             }
//           }).catchError((error) {
//             print('Registration Error: $error');
//           });
//           setState(() {
//             _isProcessing = false;
//           });
//         },
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//           child: _isProcessing
//               ? CircularProgressIndicator(
//                   valueColor: new AlwaysStoppedAnimation<Color>(
//                     Colors.red,
//                   ),
//                 )
//               : Row(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     // Add it in the path assets/images, and import it using the pubspec.yaml file:
//                     Image(
//                       image: AssetImage("assets/images/google_logo.png"),
//                       height: 25.0,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: LayoutBuilder(
//                         builder: (context, constraints) {
//                           return Text(
//                             'Continue with Google',
//                             style: TextStyle(
//                                 fontSize:
//                                     13, // Adjust the font size based on screen width
//                                 color: Colors.teal,
//                                 fontWeight: FontWeight.bold),
//                           );
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//         ),
//       ),
//     );
//   }
// }
