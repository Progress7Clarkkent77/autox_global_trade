//import 'package:autox_global_trade/Authentication/auth.dart';
import 'package:autox_global_trade/Authentication/providers/auth.dart';
import 'package:autox_global_trade/home/User/User%20Screens%20Desk/active_investment.dart';
import 'package:autox_global_trade/home/User/User%20Screens%20Desk/investment_screen.dart';
import 'package:autox_global_trade/home/User/User%20Screens%20Desk/my_investment.dart';
import 'package:autox_global_trade/home/User/User%20Screens%20Desk/notification_screen.dart';
import 'package:autox_global_trade/home/home.dart';
import 'package:clipboard/clipboard.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quickalert/quickalert.dart';

class UserHomeTablet extends StatefulWidget {
  const UserHomeTablet({Key? key}) : super(key: key);

  @override
  _UserHomeTabletState createState() => _UserHomeTabletState();
}

class _UserHomeTabletState extends State<UserHomeTablet> {
  Widget _currentScreen = Container();
  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final userModel = authProvider.userModel;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 720,
            width: double.infinity,
            color: Colors.transparent,
            child: Row(
              children: [
                Container(
                  height: 720,
                  width: 250,
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 100,
                          width: 250,
                          color: Colors.transparent,
                          child: const Center(
                            child: Text(
                              "AutoX Global Trade",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        Container(
                          height: 300,
                          width: 250,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  height: 250,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                        width: 0, color: Colors.white),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 250,
                                        color: Colors.transparent,
                                        child: const Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Text(
                                            "Account Balance",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 250,
                                        color: Colors.transparent,
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            children: [
                                              if (userModel?.mainBalance !=
                                                  null)
                                                const Text(
                                                  "Main Balance",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              const SizedBox(
                                                width: 60,
                                              ),
                                              Text(
                                                "\$${userModel!.mainBalance}",
                                                style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 250,
                                        color: Colors.transparent,
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            children: [
                                              const Text(
                                                "Interest Balance",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 40,
                                              ),
                                              Text(
                                                "\$${userModel.interestBalance}",
                                                style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 280,
                                        color: Colors.transparent,
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Add your subscribe functionality here
                                                  setState(() {
                                                    _currentScreen =
                                                        const DepositScreen();
                                                  });
                                                  // Call a function to show the dialog
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  // You can customize the button style here
                                                  textStyle: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                child: const Text("Deposit"),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Add your subscribe functionality here
                                                  setState(() {
                                                    _currentScreen =
                                                        const Investment1Screen();
                                                  });
                                                  // Call a function to show the dialog
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  // You can customize the button style here
                                                  textStyle: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                child: const Text("Invest"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 250,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  height: 50,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                        width: 0, color: Colors.white),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _currentScreen =
                                            const DashBoardScreen();
                                      });
                                    },
                                    //child: const Center(

                                    child: const Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.dashboard,
                                            size: 20,
                                            color: Colors.purple,
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                            "Dashboard",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 250,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  height: 50,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                        width: 0, color: Colors.white),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _currentScreen =
                                            const InvestmentScreen1();
                                      });
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.timeline,
                                            size: 20,
                                            color: Colors.purple,
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                            "Investment Plans",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 250,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  height: 50,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                        width: 0, color: Colors.white),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _currentScreen =
                                            const ActiveInvestmentScreen();
                                      });
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.trending_up,
                                            size: 20,
                                            color: Colors.purple,
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                            "Active Investments",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Add more containers as needed
                        Container(
                          height: 60,
                          width: 250,
                          // Add widgets or content for the top container here
                          color: Colors
                              .transparent, // You can change the color as needed
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  height: 50,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                        width: 0, color: Colors.white),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _currentScreen =
                                            const MyProfitsScreen();
                                      });
                                      // Add the functionality for the click event
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.history,
                                            size: 20,
                                            color: Colors.purple,
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                            "Payout History",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 250,
                          // Add widgets or content for the top container here
                          color: Colors
                              .transparent, // You can change the color as needed
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  height: 50,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                        width: 0, color: Colors.white),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _currentScreen =
                                            const NotificationScreen();
                                      });
                                      // Add the functionality for the click event
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.attach_money,
                                            size: 20,
                                            color: Colors.purple,
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                            "Payout",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Add more containers as needed
                        // Container(
                        //   height: 60,
                        //   width: 300,
                        //   // Add widgets or content for the top container here
                        //   color: Colors
                        //       .transparent, // You can change the color as needed
                        //   child: const Column(
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       // Center(
                        //       //   child: Container(
                        //       //     height: 50,
                        //       //     width: 150,
                        //       //     decoration: BoxDecoration(
                        //       //       borderRadius: BorderRadius.circular(25.0),
                        //       //       border: Border.all(width: 3.0),
                        //       //     ),
                        //       //     child: InkWell(
                        //       //       onTap: () {
                        //       //         setState(() {
                        //       //           _currentScreen = MyIncomeScreen();
                        //       //         });
                        //       //         // Add the functionality for the click event
                        //       //       },
                        //       //       child: const Center(
                        //       //         child: Text(
                        //       //           "My Income",
                        //       //           style: TextStyle(
                        //       //               fontSize: 16,
                        //       //               fontWeight: FontWeight.bold),
                        //       //         ),
                        //       //       ),
                        //       //     ),
                        //       //   ),
                        //       // ),
                        //     ],
                        //   ),
                        // ),
                        Container(
                          height: 60,
                          width: 250,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Check if the user is signed in
                              if (userModel?.id != null &&
                                  userModel?.photo != null &&
                                  userModel?.name != null)
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                        width: 0, color: Colors.white),
                                    color: Colors.red,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  // Display the user's image
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.network(
                                      userModel.photo,
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              const SizedBox(width: 20),
                              // Display the username if signed in
                              Text(
                                userModel.name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 240,

                          color: Colors
                              .transparent, // You can change the color as needed
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: _isProcessing
                                    ? null
                                    : () async {
                                        setState(() {
                                          _isProcessing = true;
                                        });

                                        try {
                                          // Call the signOut method from AuthProvider
                                          await Provider.of<AuthProvider>(
                                                  context,
                                                  listen: false)
                                              .signOut();

                                          // Navigate to Home page
                                          Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                              fullscreenDialog: true,
                                              builder: (context) =>
                                                  const Home(),
                                            ),
                                          );
                                        } catch (error) {
                                          print('Sign Out Error: $error');
                                        } finally {
                                          setState(() {
                                            _isProcessing = false;
                                          });
                                        }
                                      },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 8.0,
                                  ),
                                  child: _isProcessing
                                      ? const CircularProgressIndicator()
                                      : const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.logout,
                                              color: Colors.red,
                                              size: 18,
                                            ),
                                            SizedBox(
                                                width:
                                                    8), // Add some spacing between icon and text
                                            Text(
                                              'Sign out',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 300,

                          color: Colors
                              .transparent, // You can change the color as needed
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
                          ),
                        ),

                        // Add widgets or content for the red container here
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 720,
                  width: 6,
                  color: Colors.black,
                ),
                Container(
                  height: 720,
                  width: 900,
                  color: Colors.transparent,
                  child: Center(
                    child: _currentScreen,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class MyInvestmentsScreen extends StatelessWidget {
//   const MyInvestmentsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text(
//         "My Investments Screen Content",
//         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

class InvestmentScreen1 extends StatelessWidget {
  const InvestmentScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Investment Plans",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.transparent, // You can set your desired color
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  height: 350,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            '2.0%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                            'Bronze Plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     // Add your subscribe functionality here

                        //     // Call a function to show the dialog
                        //     _showCustomDialog(context);
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     // You can customize the button style here
                        //     textStyle: const TextStyle(
                        //       fontSize: 15,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        //   child: const Text("Subscribe"),
                        // )
                      ],
                    ),
                  ),
                ),
                // Add more containers or widgets as needed
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 250,
                  height: 350,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            '3.5%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                            'Silver Plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     // Add your subscribe functionality here

                        //     // Call a function to show the dialog
                        //     _showCustomDialog1(context);
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     // You can customize the button style here
                        //     textStyle: const TextStyle(
                        //       fontSize: 15,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        //   child: const Text("Subscribe"),
                        // )
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 250,
                  height: 350,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            '4.0%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                            'Gold Plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     // Add your subscribe functionality here

                        //     // Call a function to show the dialog
                        //     _showCustomDialog2(context);
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     // You can customize the button style here
                        //     textStyle: const TextStyle(
                        //       fontSize: 15,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        //   child: const Text("Subscribe"),
                        // )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Rest of your screen content goes here

          Container(
            height: 500,
            width: double.infinity,
            color: Colors.transparent, // You can set your desired color
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  height: 350,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            '4.5%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                            'Saphire Plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     // Add your subscribe functionality here

                        //     // Call a function to show the dialog
                        //     _showCustomDialog(context);
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     // You can customize the button style here
                        //     textStyle: const TextStyle(
                        //       fontSize: 15,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        //   child: const Text("Subscribe"),
                        // )
                      ],
                    ),
                  ),
                ),
                // Add more containers or widgets as needed
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 250,
                  height: 350,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            '5.0%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                            'Diamond Plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     // Add your subscribe functionality here

                        //     // Call a function to show the dialog
                        //     _showCustomDialog1(context);
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     // You can customize the button style here
                        //     textStyle: const TextStyle(
                        //       fontSize: 15,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        //   child: const Text("Subscribe"),
                        // )
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 250,
                  height: 350,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            '6.0%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                            'VIP Plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(1.3, 1.3),
                                  blurRadius: 0.3,
                                ),
                              ],
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 12),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     // Add your subscribe functionality here

                        //     // Call a function to show the dialog
                        //     _showCustomDialog2(context);
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     // You can customize the button style here
                        //     textStyle: const TextStyle(
                        //       fontSize: 15,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        //   child: const Text("Subscribe"),
                        // )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final userModel = authProvider.userModel;
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.transparent,
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Dashboard",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 150,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the radius as needed
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Main Balance',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '\$${userModel!.mainBalance}.00',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.account_balance_wallet,
                        size: 30,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the radius as needed
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Interest Balance',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '\$${userModel.interestBalance}.00',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.trending_up,
                        size: 30,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the radius as needed
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Total Deposit',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '\$${userModel.totalDeposit}.00',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.attach_money,
                        size: 30,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the radius as needed
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Total Earn',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '\$${userModel.totalEarn}.00',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.trending_up_rounded,
                        size: 30,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 150,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the radius as needed
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Total Invest',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '\$${userModel.totalInvest}.00',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.account_balance,
                        size: 30,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the radius as needed
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Total Payout',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '\$${userModel.totalPayout}.00',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.monetization_on,
                        size: 30,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the radius as needed
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Referral Bonus',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '\$${userModel.totalReferralBonus}.00',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 6),
                      const Icon(
                        Icons.card_giftcard,
                        size: 30,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the radius as needed
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Total Ticket',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '\$${userModel.totalTicket}.00',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.headset_mic,
                        size: 30,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DepositScreen extends StatefulWidget {
  const DepositScreen({Key? key}) : super(key: key);

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Deposits');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> submitDeposit() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> depositData = {
          'email': emailController.text,
          'date': dateController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(depositData);

        showAlert(
          "Success",
          "Deposit information submitted successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful submission
        emailController.clear();
        dateController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error submitting deposit: $e');
      showAlert(
        "Error",
        "An error occurred while submitting the deposit. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  Widget buildInputWithTitleAndHint(
      String title, TextEditingController controller, String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.transparent,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Deposit",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "To make your deposit, send your deposit fund to this address",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      FlutterClipboard.copy("k23447986748404735252849");
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Address copied to clipboard"),
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "k23447986748404735252849",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.copy,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Confirm your deposit payment below, After making the deposit payment!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 600,
            color: Colors.transparent,
            child: Container(
              height: 300,
              width: 300,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 500,
                      width: 800,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 0, color: Colors.white),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildInputWithTitleAndHint(
                            "Email",
                            emailController,
                            "Depositor's Email",
                          ),
                          buildInputWithTitleAndHint(
                            "Date",
                            dateController,
                            "Date of Payment",
                          ),
                          buildInputWithTitleAndHint(
                            "Amount",
                            amountController,
                            "Enter the amount Deposited",
                          ),
                          Container(
                            height: 100,
                            width: 280,
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: submitDeposit,
                                    style: ElevatedButton.styleFrom(
                                      textStyle: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    child: const Text("Confirm Deposit"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildInputWithTitleAndHint(
    String title, TextEditingController controller, String hint) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
