// Container(
//             color: Colors.black, // Background color of the main container
//             height: 750, // Set the height as per your requirement
//             margin: const EdgeInsets.only(top: 6900),
//             child: Row(
//               children: [
//                 Container(
//                   color: Colors.transparent, // Color of the outer container
//                   width:
//                       330, // Set the width as per your requirement for the outer container
//                   // Other outer container properties and widgets go here
//                   child: Column(
//                     children: [
//                       Container(
//                         color: Colors.transparent,
//                         width: 330,
//                         height: 150,
//                         child: const Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'AutoX Global Trade',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                                 shadows: [
//                                   Shadow(
//                                     color: Colors.black,
//                                     offset: Offset(2.0, 2.0),
//                                     blurRadius: 3.0,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(
//                                 height:
//                                     8), // Add some space between title and subtitle
//                             Text(
//                               'Look First Then Leap.',
//                               style: TextStyle(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold,
//                                 fontStyle: FontStyle.italic,
//                                 color: Colors.white,
//                                 shadows: [
//                                   Shadow(
//                                     color: Colors.black,
//                                     offset: Offset(2.0, 2.0),
//                                     blurRadius: 3.0,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         color:
//                             Colors.transparent, // Color of the second container
//                         width:
//                             310, // Set the width as per your requirement for the second container
//                         height: 150, // Set the height of the second container
//                         // Properties and widgets of the second container go here
//                         child: Column(
//                           children: [
//                             Container(
//                               color: Colors.transparent,
//                               width: 330,
//                               height: 60,
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   SvgPicture.asset(
//                                     'assets/twitter.svg', // Replace with the path to your Twitter SVG file
//                                     color: Colors.white,
//                                     height: 30,
//                                     width: 30,
//                                   ),
//                                   SvgPicture.asset(
//                                     'assets/facebook.svg', // Replace with the path to your Facebook SVG file
//                                     color: Colors.white,
//                                     height: 30,
//                                     width: 30,
//                                   ),
//                                   SvgPicture.asset(
//                                     'assets/youtube.svg', // Replace with the path to your YouTube SVG file
//                                     color: Colors.white,
//                                     height: 30,
//                                     width: 30,
//                                   ),
//                                   SvgPicture.asset(
//                                     'assets/instagram.svg', // Replace with the path to your Instagram SVG file
//                                     color: Colors.white,
//                                     height: 30,
//                                     width: 30,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               color: Colors.transparent,
//                               width: 330,
//                               height: 60,
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   SvgPicture.asset(
//                                     'assets/tiktok.svg', // Replace with the path to your Twitter SVG file
//                                     color: Colors.white,
//                                     height: 30,
//                                     width: 30,
//                                   ),
//                                   SvgPicture.asset(
//                                     'assets/telegram.svg', // Replace with the path to your Facebook SVG file
//                                     color: Colors.white,
//                                     height: 30,
//                                     width: 30,
//                                   ),
//                                   SvgPicture.asset(
//                                     'assets/linkedin.svg', // Replace with the path to your YouTube SVG file
//                                     color: Colors.white,
//                                     height: 30,
//                                     width: 30,
//                                   ),
//                                   SvgPicture.asset(
//                                     'assets/whatsapp.svg', // Replace with the path to your Instagram SVG file
//                                     color: Colors.white,
//                                     height: 30,
//                                     width: 30,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.transparent, // Color of the second container
//                   width: 250, // Set the width as per your requirement
//                   // Other container properties and widgets go here
//                   child: Column(
//                     children: [
//                       const SizedBox(height: 9),
//                       Container(
//                         color: Colors.transparent,
//                         width: 230,
//                         height: 60,
//                         child: Container(
//                           padding: const EdgeInsets.only(
//                               left: 10,
//                               bottom: 10), // Adjust the values as needed
//                           child: const Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 ' Products',
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.black,
//                                       offset: Offset(2.0, 2.0),
//                                       blurRadius: 3.0,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Container(
//                         color: Colors.transparent,
//                         width: 220,
//                         height: 500,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen1
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('News flow'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen2
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Supercharts'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen3
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Pine Script™'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen4
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Stock Screener'),
//                             // ),
//                             TextButton(
//                               onPressed: () {
//                                 // Navigate to Screen5
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) =>
//                                         const StockPage(), // Replace Test with the actual page you want to navigate to
//                                   ),
//                                 );
//                               },
//                               style: TextButton.styleFrom(
//                                 primary: Colors.white, // Text color
//                                 textStyle: const TextStyle(
//                                     fontWeight: FontWeight.bold), // Bold text
//                               ),
//                               child: const Text('Stock and Forex'),
//                             ),
//                             TextButton(
//                               onPressed: () {
//                                 // Navigate to Screen6
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) =>
//                                         const CryptoPage(), // Replace Test with the actual page you want to navigate to
//                                   ),
//                                 );
//                               },
//                               style: TextButton.styleFrom(
//                                 primary: Colors.white, // Text color
//                                 textStyle: const TextStyle(
//                                     fontWeight: FontWeight.bold), // Bold text
//                               ),
//                               child: const Text('Cryptocurrencies'),
//                             ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen7
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child:
//                             //       const Text('Crypto Coins Screener'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen8
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Stock Heatmap'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen9
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Crypto Heatmap'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen10
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('ETF Heatmap'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen11
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Economic Calendar'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen12
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Earnings Calendar'),
//                             // ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.transparent, // Color of the second container
//                   width: 250, // Set the width as per your requirement
//                   // Other container properties and widgets go here
//                   child: Column(
//                     children: [
//                       const SizedBox(height: 9),
//                       Container(
//                         color: Colors.transparent,
//                         width: 230,
//                         height: 60,
//                         child: Container(
//                           padding: const EdgeInsets.only(
//                               left: 10,
//                               bottom: 10), // Adjust the values as needed
//                           child: const Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 ' Company',
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.black,
//                                       offset: Offset(2.0, 2.0),
//                                       blurRadius: 3.0,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Container(
//                         color: Colors.transparent,
//                         width: 220,
//                         height: 500,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             TextButton(
//                               onPressed: () {
//                                 // Navigate to Screen1
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) =>
//                                         const ThirdContainerT(),
//                                   ),
//                                 );
//                               },
//                               style: TextButton.styleFrom(
//                                 primary: Colors.white, // Text color
//                                 textStyle: const TextStyle(
//                                     fontWeight: FontWeight.bold), // Bold text
//                               ),
//                               child: const Text('About Us'),
//                             ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen2
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Features'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen3
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Pricing'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen4
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Wall of Love'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen5
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Athletes'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen6
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Manifesto'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen7
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Careers'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen8
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Blog'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen9
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child:
//                             //       const Text('Security vulnerability'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen10
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Status page'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen11
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Terms of use'),
//                             // ),
//                             // TextButton(
//                             //   onPressed: () {
//                             //     // Navigate to Screen12
//                             //   },
//                             //   style: TextButton.styleFrom(
//                             //     primary: Colors.white, // Text color
//                             //     textStyle: const TextStyle(
//                             //         fontWeight:
//                             //             FontWeight.bold), // Bold text
//                             //   ),
//                             //   child: const Text('Disclaimer'),
//                             // ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Container(
//                 //   color: Colors.transparent, // Color of the second container
//                 //   width: 315, // Set the width as per your requirement
//                 //   // Other container properties and widgets go here
//                 //   child: Column(
//                 //     children: [
//                 //       const SizedBox(height: 9),
//                 //       Container(
//                 //         color: Colors.transparent,
//                 //         width: 330,
//                 //         height: 60,
//                 //         child: Container(
//                 //           padding: const EdgeInsets.only(
//                 //               left: 10,
//                 //               bottom: 10), // Adjust the values as needed
//                 //           child: const Column(
//                 //             mainAxisAlignment: MainAxisAlignment.end,
//                 //             crossAxisAlignment: CrossAxisAlignment.start,
//                 //             children: [
//                 //               // Text(
//                 //               //   'Community',
//                 //               //   style: TextStyle(
//                 //               //     fontSize: 18,
//                 //               //     fontWeight: FontWeight.bold,
//                 //               //     color: Colors.white,
//                 //               //     shadows: [
//                 //               //       Shadow(
//                 //               //         color: Colors.black,
//                 //               //         offset: Offset(2.0, 2.0),
//                 //               //         blurRadius: 3.0,
//                 //               //       ),
//                 //               //     ],
//                 //               //   ),
//                 //               // ),
//                 //             ],
//                 //           ),
//                 //         ),
//                 //       ),
//                 //       Container(
//                 //         color: Colors.transparent,
//                 //         width: 330,
//                 //         height: 600,
//                 //         child: const Column(
//                 //           mainAxisAlignment: MainAxisAlignment.start,
//                 //           crossAxisAlignment: CrossAxisAlignment.start,
//                 //           children: [
//                 //             // TextButton(
//                 //             //   onPressed: () {
//                 //             //     // Navigate to Screen1
//                 //             //   },
//                 //             //   style: TextButton.styleFrom(
//                 //             //     primary: Colors.white, // Text color
//                 //             //     textStyle: const TextStyle(
//                 //             //         fontWeight:
//                 //             //             FontWeight.bold), // Bold text
//                 //             //   ),
//                 //             //   child: const Text('Refer a friend'),
//                 //             // ),
//                 //             // TextButton(
//                 //             //   onPressed: () {
//                 //             //     // Navigate to Screen2
//                 //             //   },
//                 //             //   style: TextButton.styleFrom(
//                 //             //     primary: Colors.white, // Text color
//                 //             //     textStyle: const TextStyle(
//                 //             //         fontWeight:
//                 //             //             FontWeight.bold), // Bold text
//                 //             //   ),
//                 //             //   child: const Text('Ideas'),
//                 //             // ),
//                 //             // TextButton(
//                 //             //   onPressed: () {
//                 //             //     // Navigate to Screen3
//                 //             //   },
//                 //             //   style: TextButton.styleFrom(
//                 //             //     primary: Colors.white, // Text color
//                 //             //     textStyle: const TextStyle(
//                 //             //         fontWeight:
//                 //             //             FontWeight.bold), // Bold text
//                 //             //   ),
//                 //             //   child: const Text('Scripts'),
//                 //             // ),
//                 //             // TextButton(
//                 //             //   onPressed: () {
//                 //             //     // Navigate to Screen4
//                 //             //   },
//                 //             //   style: TextButton.styleFrom(
//                 //             //     primary: Colors.white, // Text color
//                 //             //     textStyle: const TextStyle(
//                 //             //         fontWeight:
//                 //             //             FontWeight.bold), // Bold text
//                 //             //   ),
//                 //             //   child: const Text('Streams'),
//                 //             // ),
//                 //             // TextButton(
//                 //             //   onPressed: () {
//                 //             //     // Navigate to Screen5
//                 //             //   },
//                 //             //   style: TextButton.styleFrom(
//                 //             //     primary: Colors.white, // Text color
//                 //             //     textStyle: const TextStyle(
//                 //             //         fontWeight:
//                 //             //             FontWeight.bold), // Bold text
//                 //             //   ),
//                 //             //   child: const Text('House rules'),
//                 //             // ),
//                 //             // TextButton(
//                 //             //   onPressed: () {
//                 //             //     // Navigate to Screen6
//                 //             //   },
//                 //             //   style: TextButton.styleFrom(
//                 //             //     primary: Colors.white, // Text color
//                 //             //     textStyle: const TextStyle(
//                 //             //         fontWeight:
//                 //             //             FontWeight.bold), // Bold text
//                 //             //   ),
//                 //             //   child: const Text('Moderators'),
//                 //             // ),
//                 //             // TextButton(
//                 //             //   onPressed: () {
//                 //             //     // Navigate to Screen7
//                 //             //   },
//                 //             //   style: TextButton.styleFrom(
//                 //             //     primary: Colors.white, // Text color
//                 //             //     textStyle: const TextStyle(
//                 //             //         fontWeight:
//                 //             //             FontWeight.bold), // Bold text
//                 //             //   ),
//                 //             //   child: const Text('Pine Script™ Wizards'),
//                 //             // ),
//                 //             // TextButton(
//                 //             //   onPressed: () {
//                 //             //     // Navigate to Screen8
//                 //             //   },
//                 //             //   style: TextButton.styleFrom(
//                 //             //     primary: Colors.white, // Text color
//                 //             //     textStyle: const TextStyle(
//                 //             //         fontWeight:
//                 //             //             FontWeight.bold), // Bold text
//                 //             //   ),
//                 //             //   child: const Text('Chat'),
//                 //             // ),
//                 //           ],
//                 //         ),
//                 //       ),
//                 //     ],
//                 //   ),
//                 // ),
//                 // Container(
//                 //   color: Colors.transparent, // Color of the second container
//                 //   width: 315, // Set the width as per your requirement
//                 //   // Other container properties and widgets go here
//                 //   child: Column(
//                 //     children: [
//                 //       const SizedBox(height: 9),
//                 //       Container(
//                 //         color: Colors.transparent,
//                 //         width: 330,
//                 //         height: 60,
//                 //         child: Container(
//                 //           padding: const EdgeInsets.only(
//                 //               left: 10,
//                 //               bottom: 10), // Adjust the values as needed
//                 //           child: const Column(
//                 //             mainAxisAlignment: MainAxisAlignment.end,
//                 //             crossAxisAlignment: CrossAxisAlignment.start,
//                 //             children: [
//                 //               // Text(
//                 //               //   'For Business',
//                 //               //   style: TextStyle(
//                 //               //     fontSize: 18,
//                 //               //     fontWeight: FontWeight.bold,
//                 //               //     color: Colors.white,
//                 //               //     shadows: [
//                 //               //       Shadow(
//                 //               //         color: Colors.black,
//                 //               //         offset: Offset(2.0, 2.0),
//                 //               //         blurRadius: 3.0,
//                 //               //       ),
//                 //               //     ],
//                 //               //   ),
//                 //               // ),
//                 //             ],
//                 //           ),
//                 //         ),
//                 //       ),
//                 // Container(
//                 //   color: Colors.transparent,
//                 //   width: 330,
//                 //   height: 600,
//                 //   child: const Column(
//                 //     mainAxisAlignment: MainAxisAlignment.start,
//                 //     crossAxisAlignment: CrossAxisAlignment.start,
//                 //     children: [
//                 //       // TextButton(
//                 //       //   onPressed: () {
//                 //       //     // Navigate to Screen1
//                 //       //   },
//                 //       //   style: TextButton.styleFrom(
//                 //       //     primary: Colors.white, // Text color
//                 //       //     textStyle: const TextStyle(
//                 //       //         fontWeight:
//                 //       //             FontWeight.bold), // Bold text
//                 //       //   ),
//                 //       //   child: const Text('Widgets'),
//                 //       // ),
//                 //       // TextButton(
//                 //       //   onPressed: () {
//                 //       //     // Navigate to Screen2
//                 //       //   },
//                 //       //   style: TextButton.styleFrom(
//                 //       //     primary: Colors.white, // Text color
//                 //       //     textStyle: const TextStyle(
//                 //       //         fontWeight:
//                 //       //             FontWeight.bold), // Bold text
//                 //       //   ),
//                 //       //   child: const Text('Advertising'),
//                 //       // ),
//                 //       // TextButton(
//                 //       //   onPressed: () {
//                 //       //     // Navigate to Screen3
//                 //       //   },
//                 //       //   style: TextButton.styleFrom(
//                 //       //     primary: Colors.white, // Text color
//                 //       //     textStyle: const TextStyle(
//                 //       //         fontWeight:
//                 //       //             FontWeight.bold), // Bold text
//                 //       //   ),
//                 //       //   child: const Text('Charting libraries'),
//                 //       // ),
//                 //       // TextButton(
//                 //       //   onPressed: () {
//                 //       //     // Navigate to Screen4
//                 //       //   },
//                 //       //   style: TextButton.styleFrom(
//                 //       //     primary: Colors.white, // Text color
//                 //       //     textStyle: const TextStyle(
//                 //       //         fontWeight:
//                 //       //             FontWeight.bold), // Bold text
//                 //       //   ),
//                 //       //   child: const Text('Lightweight Charts™'),
//                 //       // ),
//                 //       // TextButton(
//                 //       //   onPressed: () {
//                 //       //     // Navigate to Screen5
//                 //       //   },
//                 //       //   style: TextButton.styleFrom(
//                 //       //     primary: Colors.white, // Text color
//                 //       //     textStyle: const TextStyle(
//                 //       //         fontWeight:
//                 //       //             FontWeight.bold), // Bold text
//                 //       //   ),
//                 //       //   child: const Text('Advanced Charts'),
//                 //       // ),
//                 //       // TextButton(
//                 //       //   onPressed: () {
//                 //       //     // Navigate to Screen6
//                 //       //   },
//                 //       //   style: TextButton.styleFrom(
//                 //       //     primary: Colors.white, // Text color
//                 //       //     textStyle: const TextStyle(
//                 //       //         fontWeight:
//                 //       //             FontWeight.bold), // Bold text
//                 //       //   ),
//                 //       //   child:
//                 //       //       const Text('Brokerage integration'),
//                 //       // ),
//                 //       // TextButton(
//                 //       //   onPressed: () {
//                 //       //     // Navigate to Screen7
//                 //       //   },
//                 //       //   style: TextButton.styleFrom(
//                 //       //     primary: Colors.white, // Text color
//                 //       //     textStyle: const TextStyle(
//                 //       //         fontWeight:
//                 //       //             FontWeight.bold), // Bold text
//                 //       //   ),
//                 //       //   child: const Text('Partner program'),
//                 //       // ),
//                 //     ],
//                 //   ),
//                 // ),
//                 //     ],
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),