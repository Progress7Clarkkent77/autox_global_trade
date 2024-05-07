// Positioned(
//           top: 0,
//           left: 0,
//           right: 0,
//           child: Container(
//             height: 80,
//             color: Colors.transparent,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 16.0),
//                   child: IconButton(
//                     icon: const Icon(Icons.menu, color: Colors.white),
//                     onPressed: () {
//                       Scaffold.of(context).openDrawer();
//                     },
//                   ),
//                 ),
//                 const Text(
//                   'AutoX Global Trade',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                     shadows: [
//                       Shadow(
//                         color: Colors.black,
//                         offset: Offset(2.0, 2.0),
//                         blurRadius: 2.0,
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 16.0),
//                   child: ClipPath(
//                     clipper: ParallelogramClipper(
//                         10.0), // Adjust the radius as needed
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors
//                             .transparent, // Set to transparent to allow the gradient background
//                         elevation: 2.0,
//                         padding: EdgeInsets.zero, // Added padding
//                       ),
//                       child: Ink(
//                         decoration: BoxDecoration(
//                           gradient: const LinearGradient(
//                             colors: [
//                               Colors.blue, // Replace with your first color
//                               Colors.green, // Replace with your second color
//                               Colors.orange, // Replace with your third color
//                             ],
//                           ),
//                           borderRadius: BorderRadius.circular(
//                               10.0), // Adjust the radius as needed
//                         ),
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 16.0, vertical: 8.0), // Added padding
//                           child: const Text(
//                             'Get Started',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 14.0,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//           top: 80,
//           left: 0,
//           right: 0,
//           child: Container(
//             height: 250, // Set the desired height
//             color: Colors.transparent, // Blue background color
//             child: const Center(
//               child: Text(
//                 'Look First /\nThen Leap.',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 35.0,
//                   shadows: [
//                     Shadow(
//                       color: Colors.black,
//                       offset: Offset(2.0, 2.0),
//                       blurRadius: 3.0,
//                     ),
//                   ],
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           top: 250,
//           left: 0,
//           right: 0,
//           child: Container(
//             height: 100,
//             color: Colors.transparent,
//             child: FadingTextStyleAnimation(),
//           ),
//         ),
//         Positioned(
//           top: 350, // Adjust the top position as needed
//           left: 0,
//           right: 0,
//           child: SearchBarWidget(),
//         ),
//         Positioned(
//           top: 500,
//           left: 0,
//           right: 0,
//           child: MouseRegion(
//             cursor: SystemMouseCursors.click,
//             child: Container(
//               height: 100,
//               color: Colors.transparent,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 5.0),
//                 child: Align(
//                   alignment: Alignment.center,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           // Handle the click event for the first black container here
//                           print('BTCUSD container clicked!');
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.all(13.0),
//                           child: Container(
//                             width: 120,
//                             height: 60,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.rectangle,
//                               borderRadius: BorderRadius.circular(30.0),
//                               color: Colors.black.withOpacity(0.5),
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 const SizedBox(width: 13),
//                                 Container(
//                                   width: 20,
//                                   height: 20,
//                                   decoration: const BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     color: Colors.white,
//                                   ),
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(25.0),
//                                     child: Image.asset(
//                                       'assets/1.jpeg', // Replace with the path to your image asset
//                                       width: 50,
//                                       height: 50,
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(width: 10),
//                                 const Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'BTCUSD',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 12.0,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     SizedBox(height: 5),
//                                     Text(
//                                       '35 600.00 USD',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 10.0,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 10), // Adjust spacing as needed
//                       GestureDetector(
//                         onTap: () {
//                           // Handle the click event for the second black container here
//                           print('ETHUSD container clicked!');
//                         },
//                         child: Container(
//                           width: 120,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.rectangle,
//                             borderRadius: BorderRadius.circular(30.0),
//                             color: Colors.black.withOpacity(0.5),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               const SizedBox(width: 13),
//                               Container(
//                                 width: 20,
//                                 height: 20,
//                                 decoration: const BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Colors.white,
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(25.0),
//                                   child: Image.asset(
//                                     'assets/2.png', // Replace with the path to your image asset
//                                     width: 50,
//                                     height: 50,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                               const Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     'ETHUSD',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 12.0,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   SizedBox(height: 5),
//                                   Text(
//                                     '2 500.00 USD',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 10.0,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),

//                       const SizedBox(width: 20),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),