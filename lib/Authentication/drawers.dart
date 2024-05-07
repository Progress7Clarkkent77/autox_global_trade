// import 'package:autox_global_trade/Authentication/dialog_auth.dart';
// import 'package:autox_global_trade/home/user_home_test.dart';
// import 'package:flutter/material.dart';

// import 'auth.dart';
// //import 'dialog_auth.dart';
// import 'home_page.dart';

// /// UI for displayed all content in Drawer with small screens
// class Drawers extends StatefulWidget {
//   const Drawers({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _DrawersState createState() => _DrawersState();
// }

// class _DrawersState extends State<Drawers> {
//   bool _isProcessing = false;
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Container(
//         color: Colors.white,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               userEmail == null
//                   ? Container(
//                       width: double.maxFinite,
//                       child: TextButton(
//                         style: TextButton.styleFrom(
//                           backgroundColor: Colors.black,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                         ),

//                         /// for call and show AuthDialog widget when click
//                         onPressed: () {
//                           showDialog(
//                             context: context,
//                             builder: (context) => MainHome(),
//                           );
//                         },

//                         child: const Padding(
//                           padding: EdgeInsets.only(
//                             top: 15.0,
//                             bottom: 15.0,
//                           ),
//                           child: Text(
//                             'Dashboard',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     )

//                   /// To display the user profile picture (if present), user email/name and a Sign out button.
//                   : Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         CircleAvatar(
//                           radius: 20,
//                           backgroundImage:
//                               imageUrl != null ? NetworkImage(imageUrl!) : null,
//                           child: imageUrl == null
//                               ? const Icon(
//                                   Icons.account_circle,
//                                   size: 40,
//                                 )
//                               : Container(),
//                         ),
//                         const SizedBox(width: 10),
//                         Text(
//                           name ?? userEmail!,
//                           style: const TextStyle(
//                             fontSize: 11,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         )
//                       ],
//                     ),
//               const SizedBox(height: 20),
//               userEmail != null
//                   ? Container(
//                       width: double.maxFinite,

//                       /// UI  for the Sign out button.
//                       child: TextButton(
//                         style: TextButton.styleFrom(
//                           backgroundColor: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                         ),
//                         onPressed: _isProcessing
//                             ? null
//                             : () async {
//                                 setState(() {
//                                   _isProcessing = true;
//                                 });
//                                 await signOut().then((result) {
//                                   print(result);

//                                   /// for navigate to Home page when click signOut button
//                                   Navigator.of(context).pushReplacement(
//                                     MaterialPageRoute(
//                                       fullscreenDialog: true,
//                                       builder: (context) => HomePage(),
//                                     ),
//                                   );
//                                 }).catchError((error) {
//                                   print('Sign Out Error: $error');
//                                 });
//                                 setState(() {
//                                   _isProcessing = false;
//                                 });
//                               },
//                         child: Padding(
//                           padding: const EdgeInsets.only(
//                             top: 15.0,
//                             bottom: 15.0,
//                           ),
//                           child: _isProcessing
//                               ? const CircularProgressIndicator()
//                               : const Text(
//                                   'Sign out',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.red,
//                                   ),
//                                 ),
//                         ),
//                       ),
//                     )
//                   : Container(),
//               userEmail != null ? const SizedBox(height: 20) : Container(),
//               InkWell(
//                 onTap: () {
//                   showDialog(
//                     context: context,

//                     /// for call and show AuthDialog widget when click
//                     builder: (context) => AuthDialog(),
//                   );
//                 },
//                 child: const Text(
//                   'Leaderboard',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 16),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
//                 child: Divider(
//                   color: Colors.blueGrey[400],
//                   thickness: 2,
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   showDialog(
//                     context: context,

//                     /// for call and show AuthDialog widget when click
//                     builder: (context) => AuthDialog(),
//                   );
//                 },
//                 child: const Text(
//                   'Nominees',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 16),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
//                 child: Divider(
//                   color: Colors.blueGrey[400],
//                   thickness: 2,
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   showDialog(
//                     context: context,

//                     /// for call and show AuthDialog widget when click
//                     builder: (context) => AuthDialog(),
//                   );
//                 },
//                 child: const Text(
//                   'Favorites',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
//                 child: Divider(
//                   color: Colors.blueGrey[400],
//                   thickness: 2,
//                 ),
//               ),
//               const Expanded(
//                 child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Text(
//                     'Progress Tech © 2023\nContact: 09063830316',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
