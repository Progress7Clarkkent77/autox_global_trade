//import 'package:autox_global_trade/home/test.dart';
import 'package:clipboard/clipboard.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({Key? key}) : super(key: key);

  //bool _loading = false;
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
                "Invest",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
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
                  width: 350,
                  height: 400,
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            '2.0%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
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
                        const SizedBox(height: 10),
                        const Center(
                          child: Text(
                            'Bronze Plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
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
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            // Add your subscribe functionality here

                            // Call a function to show the dialog
                            _showCustomDialog(context);
                          },
                          style: ElevatedButton.styleFrom(
                            // You can customize the button style here
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text("Subscribe"),
                        )
                      ],
                    ),
                  ),
                ),
                // Add more containers or widgets as needed
                const SizedBox(
                  width: 35,
                ),
                Container(
                  width: 350,
                  height: 400,
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            '3.5%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
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
                        const SizedBox(height: 10),
                        const Center(
                          child: Text(
                            'Silver Plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
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
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            // Add your subscribe functionality here

                            // Call a function to show the dialog
                            _showCustomDialog1(context);
                          },
                          style: ElevatedButton.styleFrom(
                            // You can customize the button style here
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text("Subscribe"),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  width: 35,
                ),
                Container(
                  width: 350,
                  height: 400,
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            '4.0%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
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
                        const SizedBox(height: 10),
                        const Center(
                          child: Text(
                            'Gold Plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
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
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            // Add your subscribe functionality here

                            // Call a function to show the dialog
                            _showCustomDialog2(context);
                          },
                          style: ElevatedButton.styleFrom(
                            // You can customize the button style here
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text("Subscribe"),
                        )
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
                  width: 350,
                  height: 400,
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            '4.5%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
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
                        const SizedBox(height: 10),
                        const Center(
                          child: Text(
                            'Saphire Plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
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
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            // Add your subscribe functionality here

                            // Call a function to show the dialog
                            _showCustomDialog3(context);
                          },
                          style: ElevatedButton.styleFrom(
                            // You can customize the button style here
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text("Subscribe"),
                        )
                      ],
                    ),
                  ),
                ),
                // Add more containers or widgets as needed
                const SizedBox(
                  width: 35,
                ),
                Container(
                  width: 350,
                  height: 400,
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            '5.0%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
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
                        const SizedBox(height: 10),
                        const Center(
                          child: Text(
                            'Diamond Plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
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
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            // Add your subscribe functionality here

                            // Call a function to show the dialog
                            _showCustomDialog4(context);
                          },
                          style: ElevatedButton.styleFrom(
                            // You can customize the button style here
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text("Subscribe"),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  width: 35,
                ),
                Container(
                  width: 350,
                  height: 400,
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
                  child: Stack(
                    children: [
                      // Banner at the top left corner
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'VIP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Center(
                              child: Text(
                                '6.0%',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
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
                            const SizedBox(height: 10),
                            const Center(
                              child: Text(
                                'VIP Plan',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
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
                            const SizedBox(height: 50),
                            const Center(
                              child: Text(
                                'Min. Investment: \$24,999',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Center(
                              child: Text(
                                'Max. Investment: \$49,999',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Center(
                              child: Text(
                                'Dashboard: Dynamic',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Center(
                              child: Text(
                                'ROI Payout in cryptocurrency',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Center(
                              child: Text(
                                'Trade Duration Time: 2 Weeks',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 12),
                            ElevatedButton(
                              onPressed: () {
                                // Add your subscribe functionality here
                                // Call a function to show the dialog
                                _showCustomDialog5(context);
                              },
                              style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              child: const Text("Subscribe"),
                            ),
                          ],
                        ),
                      ),
                    ],
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

class Investment1Screen extends StatelessWidget {
  const Investment1Screen({Key? key}) : super(key: key);

  //bool _loading = false;
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
                "Invest",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 450,
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(
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
                        const SizedBox(height: 10),
                        const Center(
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
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            // Add your subscribe functionality here

                            // Call a function to show the dialog
                            _showCustomDialog(context);
                          },
                          style: ElevatedButton.styleFrom(
                            // You can customize the button style here
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text("Subscribe"),
                        )
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(
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
                        const SizedBox(height: 10),
                        const Center(
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
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            // Add your subscribe functionality here

                            // Call a function to show the dialog
                            _showCustomDialog1(context);
                          },
                          style: ElevatedButton.styleFrom(
                            // You can customize the button style here
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text("Subscribe"),
                        )
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(
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
                        const SizedBox(height: 10),
                        const Center(
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
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            // Add your subscribe functionality here

                            // Call a function to show the dialog
                            _showCustomDialog2(context);
                          },
                          style: ElevatedButton.styleFrom(
                            // You can customize the button style here
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text("Subscribe"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Rest of your screen content goes here

          Container(
            height: 450,
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(
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
                        const SizedBox(height: 10),
                        const Center(
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
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            // Add your subscribe functionality here

                            // Call a function to show the dialog
                            _showCustomDialog3(context);
                          },
                          style: ElevatedButton.styleFrom(
                            // You can customize the button style here
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text("Subscribe"),
                        )
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
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(
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
                        const SizedBox(height: 10),
                        const Center(
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
                        const SizedBox(height: 50),
                        const Center(
                          child: Text(
                            'Min. Investment: \$24,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Max. Investment: \$49,999',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Dashboard: Dynamic',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'ROI Payout in cryptocurrency',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'Trade Duration Time: 2 Weeks',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            // Add your subscribe functionality here

                            // Call a function to show the dialog
                            _showCustomDialog4(context);
                          },
                          style: ElevatedButton.styleFrom(
                            // You can customize the button style here
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text("Subscribe"),
                        )
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
                  child: Stack(
                    children: [
                      // Banner at the top left corner
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'VIP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Center(
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
                            const SizedBox(height: 10),
                            const Center(
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
                            const SizedBox(height: 50),
                            const Center(
                              child: Text(
                                'Min. Investment: \$24,999',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Center(
                              child: Text(
                                'Max. Investment: \$49,999',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Center(
                              child: Text(
                                'Dashboard: Dynamic',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Center(
                              child: Text(
                                'ROI Payout in cryptocurrency',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Center(
                              child: Text(
                                'Trade Duration Time: 2 Weeks',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 12),
                            ElevatedButton(
                              onPressed: () {
                                // Add your subscribe functionality here
                                // Call a function to show the dialog
                                _showCustomDialog5(context);
                              },
                              style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              child: const Text("Subscribe"),
                            ),
                          ],
                        ),
                      ),
                    ],
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

class Investment2Screen extends StatelessWidget {
  const Investment2Screen({Key? key}) : super(key: key);

  //bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Invest',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 1150,
              width: double.infinity,
              color: Colors.transparent, // You can set your desired color
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Center(
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
                          const SizedBox(height: 10),
                          const Center(
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
                          const SizedBox(height: 50),
                          const Center(
                            child: Text(
                              'Min. Investment: \$24,999',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Max. Investment: \$49,999',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Dashboard: Dynamic',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'ROI Payout in cryptocurrency',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Trade Duration Time: 2 Weeks',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              // Add your subscribe functionality here

                              // Call a function to show the dialog
                              _showCustomDialog10(context);
                            },
                            style: ElevatedButton.styleFrom(
                              // You can customize the button style here
                              textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text("Subscribe"),
                          )
                        ],
                      ),
                    ),
                  ),
                  // Add more containers or widgets as needed
                  const SizedBox(
                    height: 10,
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
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Center(
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
                          const SizedBox(height: 10),
                          const Center(
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
                          const SizedBox(height: 50),
                          const Center(
                            child: Text(
                              'Min. Investment: \$24,999',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Max. Investment: \$49,999',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Dashboard: Dynamic',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'ROI Payout in cryptocurrency',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Trade Duration Time: 2 Weeks',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              // Add your subscribe functionality here

                              // Call a function to show the dialog
                              _showCustomDialog11(context);
                            },
                            style: ElevatedButton.styleFrom(
                              // You can customize the button style here
                              textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text("Subscribe"),
                          )
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
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
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Center(
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
                          const SizedBox(height: 10),
                          const Center(
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
                          const SizedBox(height: 50),
                          const Center(
                            child: Text(
                              'Min. Investment: \$24,999',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Max. Investment: \$49,999',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Dashboard: Dynamic',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'ROI Payout in cryptocurrency',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Trade Duration Time: 2 Weeks',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              // Add your subscribe functionality here

                              // Call a function to show the dialog
                              _showCustomDialog12(context);
                            },
                            style: ElevatedButton.styleFrom(
                              // You can customize the button style here
                              textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text("Subscribe"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Rest of your screen content goes here

            Container(
              height: 1150,
              width: double.infinity,
              color: Colors.transparent, // You can set your desired color
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Center(
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
                          const SizedBox(height: 10),
                          const Center(
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
                          const SizedBox(height: 50),
                          const Center(
                            child: Text(
                              'Min. Investment: \$24,999',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Max. Investment: \$49,999',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Dashboard: Dynamic',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'ROI Payout in cryptocurrency',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Trade Duration Time: 2 Weeks',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              // Add your subscribe functionality here

                              // Call a function to show the dialog
                              _showCustomDialog13(context);
                            },
                            style: ElevatedButton.styleFrom(
                              // You can customize the button style here
                              textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text("Subscribe"),
                          )
                        ],
                      ),
                    ),
                  ),
                  // Add more containers or widgets as needed
                  const SizedBox(
                    height: 10,
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
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Center(
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
                          const SizedBox(height: 10),
                          const Center(
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
                          const SizedBox(height: 50),
                          const Center(
                            child: Text(
                              'Min. Investment: \$24,999',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Max. Investment: \$49,999',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Dashboard: Dynamic',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'ROI Payout in cryptocurrency',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Center(
                            child: Text(
                              'Trade Duration Time: 2 Weeks',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              // Add your subscribe functionality here

                              // Call a function to show the dialog
                              _showCustomDialog14(context);
                            },
                            style: ElevatedButton.styleFrom(
                              // You can customize the button style here
                              textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text("Subscribe"),
                          )
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
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
                    child: Stack(
                      children: [
                        // Banner at the top left corner
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text(
                              'VIP',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Center(
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
                              const SizedBox(height: 10),
                              const Center(
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
                              const SizedBox(height: 50),
                              const Center(
                                child: Text(
                                  'Min. Investment: \$24,999',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Center(
                                child: Text(
                                  'Max. Investment: \$49,999',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Center(
                                child: Text(
                                  'Dashboard: Dynamic',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Center(
                                child: Text(
                                  'ROI Payout in cryptocurrency',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Center(
                                child: Text(
                                  'Trade Duration Time: 2 Weeks',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(height: 12),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your subscribe functionality here
                                  // Call a function to show the dialog
                                  _showCustomDialog15(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                child: const Text("Subscribe"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showCustomDialog(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Bronze Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 900,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  Bronze Plan Subscription",
                      style: TextStyle(
                        fontSize: 25,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 18,
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
                                  fontSize: 16,
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
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
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
                                  "Plan",
                                  planController,
                                  "Type of Plan",
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                              "Confirm Subscription"),
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
          ),
        ),
      );
    },
  );
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

void _showCustomDialog1(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Silver Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 900,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  Silver Plan Subscription",
                      style: TextStyle(
                        fontSize: 25,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 18,
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
                                  fontSize: 16,
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
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
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
                                buildInputWithTitleAndHint1(
                                  "Email",
                                  emailController,
                                  "Depositor's Email",
                                ),
                                buildInputWithTitleAndHint1(
                                  "Date",
                                  dateController,
                                  "Date of Payment",
                                ),
                                buildInputWithTitleAndHint1(
                                  "Plan",
                                  planController,
                                  "Type of Plan",
                                ),
                                buildInputWithTitleAndHint1(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                              "Confirm Subscription"),
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
          ),
        ),
      );
    },
  );
}

Widget buildInputWithTitleAndHint1(
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

void _showCustomDialog2(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Gold Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 900,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  Gold Plan Subscription",
                      style: TextStyle(
                        fontSize: 25,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 18,
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
                                  fontSize: 16,
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
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
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
                                buildInputWithTitleAndHint2(
                                  "Email",
                                  emailController,
                                  "Depositor's Email",
                                ),
                                buildInputWithTitleAndHint2(
                                  "Date",
                                  dateController,
                                  "Date of Payment",
                                ),
                                buildInputWithTitleAndHint2(
                                  "Plan",
                                  planController,
                                  "Type of Plan",
                                ),
                                buildInputWithTitleAndHint2(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                              "Confirm Subscription"),
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
          ),
        ),
      );
    },
  );
}

Widget buildInputWithTitleAndHint2(
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

void _showCustomDialog3(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Saphire Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 900,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  Saphire Plan Subscription",
                      style: TextStyle(
                        fontSize: 25,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 18,
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
                                  fontSize: 16,
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
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
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
                                buildInputWithTitleAndHint1(
                                  "Email",
                                  emailController,
                                  "Depositor's Email",
                                ),
                                buildInputWithTitleAndHint3(
                                  "Date",
                                  dateController,
                                  "Date of Payment",
                                ),
                                buildInputWithTitleAndHint3(
                                  "Plan",
                                  planController,
                                  "Type of Plan",
                                ),
                                buildInputWithTitleAndHint3(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                              "Confirm Subscription"),
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
          ),
        ),
      );
    },
  );
}

Widget buildInputWithTitleAndHint3(
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

void _showCustomDialog4(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Diamond Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 900,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  Diamond Plan Subscription",
                      style: TextStyle(
                        fontSize: 25,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 18,
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
                                  fontSize: 16,
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
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
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
                                buildInputWithTitleAndHint1(
                                  "Email",
                                  emailController,
                                  "Depositor's Email",
                                ),
                                buildInputWithTitleAndHint4(
                                  "Date",
                                  dateController,
                                  "Date of Payment",
                                ),
                                buildInputWithTitleAndHint4(
                                  "Plan",
                                  planController,
                                  "Type of Plan",
                                ),
                                buildInputWithTitleAndHint4(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                              "Confirm Subscription"),
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
          ),
        ),
      );
    },
  );
}

Widget buildInputWithTitleAndHint4(
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

void _showCustomDialog5(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('VIP Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 900,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  VIP Plan Subscription",
                      style: TextStyle(
                        fontSize: 25,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 18,
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
                                  fontSize: 16,
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
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
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
                                buildInputWithTitleAndHint1(
                                  "Email",
                                  emailController,
                                  "Depositor's Email",
                                ),
                                buildInputWithTitleAndHint5(
                                  "Date",
                                  dateController,
                                  "Date of Payment",
                                ),
                                buildInputWithTitleAndHint5(
                                  "Plan",
                                  planController,
                                  "Type of Plan",
                                ),
                                buildInputWithTitleAndHint5(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                              "Confirm Subscription"),
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
          ),
        ),
      );
    },
  );
}

Widget buildInputWithTitleAndHint5(
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

//-------------------------------------------------------------

void _showCustomDialog10(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Bronze Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  Bronze Plan Subscription",
                      style: TextStyle(
                        fontSize: 18,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 12,
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
                                  fontSize: 10,
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
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
                            width: 200,
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
                                buildInputWithTitleAndHint10(
                                  "Email",
                                  emailController,
                                  "Depositor's Email",
                                ),
                                buildInputWithTitleAndHint10(
                                  "Date",
                                  dateController,
                                  "Date of Payment",
                                ),
                                buildInputWithTitleAndHint10(
                                  "Plan",
                                  planController,
                                  "Type of Plan",
                                ),
                                buildInputWithTitleAndHint10(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                            "Confirm Subscription",
                                            style: TextStyle(
                                              fontSize: 10,
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
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget buildInputWithTitleAndHint10(
    String title, TextEditingController controller, String hint) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 10),
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

void _showCustomDialog11(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Silver Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  Silver Plan Subscription",
                      style: TextStyle(
                        fontSize: 18,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 12,
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
                                  fontSize: 10,
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
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
                            width: 200,
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
                                buildInputWithTitleAndHint11(
                                  "Email",
                                  emailController,
                                  "Depositor's Email",
                                ),
                                buildInputWithTitleAndHint11(
                                  "Date",
                                  dateController,
                                  "Date of Payment",
                                ),
                                buildInputWithTitleAndHint11(
                                  "Plan",
                                  planController,
                                  "Type of Plan",
                                ),
                                buildInputWithTitleAndHint11(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                            "Confirm Subscription",
                                            style: TextStyle(
                                              fontSize: 10,
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
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget buildInputWithTitleAndHint11(
    String title, TextEditingController controller, String hint) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 10),
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

void _showCustomDialog12(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Gold Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  Gold Plan Subscription",
                      style: TextStyle(
                        fontSize: 18,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 12,
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
                                  fontSize: 10,
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
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
                            width: 200,
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
                                buildInputWithTitleAndHint12(
                                  "Email",
                                  emailController,
                                  "Depositor's Email",
                                ),
                                buildInputWithTitleAndHint12(
                                  "Date",
                                  dateController,
                                  "Date of Payment",
                                ),
                                buildInputWithTitleAndHint12(
                                  "Plan",
                                  planController,
                                  "Type of Plan",
                                ),
                                buildInputWithTitleAndHint12(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                            "Confirm Subscription",
                                            style: TextStyle(
                                              fontSize: 10,
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
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget buildInputWithTitleAndHint12(
    String title, TextEditingController controller, String hint) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 10),
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

void _showCustomDialog13(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Saphire Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  Saphire Plan Subscription",
                      style: TextStyle(
                        fontSize: 18,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 12,
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
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.copy, color: Colors.black, size: 12),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
                            width: 200,
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
                                buildInputWithTitleAndHint13(
                                  "Email",
                                  emailController,
                                  "Depositor's Email",
                                ),
                                buildInputWithTitleAndHint13(
                                  "Date",
                                  dateController,
                                  "Date of Payment",
                                ),
                                buildInputWithTitleAndHint13(
                                  "Plan",
                                  planController,
                                  "Type of Plan",
                                ),
                                buildInputWithTitleAndHint13(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                            "Confirm Subscription",
                                            style: TextStyle(
                                              fontSize: 10,
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
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget buildInputWithTitleAndHint13(
    String title, TextEditingController controller, String hint) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 10),
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

void _showCustomDialog14(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Diamond Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  Diamond Plan Subscription",
                      style: TextStyle(
                        fontSize: 18,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 12,
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
                                  fontSize: 10,
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
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
                            width: 200,
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
                                buildInputWithTitleAndHint14(
                                  "Email",
                                  emailController,
                                  "Depositor's Email",
                                ),
                                buildInputWithTitleAndHint14(
                                  "Date",
                                  dateController,
                                  "Date of Payment",
                                ),
                                buildInputWithTitleAndHint14(
                                  "Plan",
                                  planController,
                                  "Type of Plan",
                                ),
                                buildInputWithTitleAndHint14(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                            "Confirm Subscription",
                                            style: TextStyle(
                                              fontSize: 10,
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
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget buildInputWithTitleAndHint14(
    String title, TextEditingController controller, String hint) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 10),
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

void _showCustomDialog15(BuildContext context) {
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final planController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('VIP Plan Subscription');

  void showAlert(String title, String content, QuickAlertType alertType) {
    QuickAlert.show(
      context: context,
      title: title,
      text: content,
      type: alertType,
    );
  }

  Future<void> confirmSubscription() async {
    try {
      if (emailController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          planController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> subscriptionData = {
          'email': emailController.text,
          'date': dateController.text,
          'plan': planController.text,
          'amount': amountController.text,
        };

        await dbRef.push().set(subscriptionData);

        showAlert(
          "Success",
          "Subscription information confirmed successfully",
          QuickAlertType.success,
        );

        // Clear text controllers after successful confirmation
        emailController.clear();
        dateController.clear();
        planController.clear();
        amountController.clear();
      } else {
        showAlert(
          "Error",
          "Please fill in all the required fields",
          QuickAlertType.error,
        );
      }
    } catch (e) {
      print('Error confirming subscription: $e');
      showAlert(
        "Error",
        "An error occurred while confirming the subscription. Please try again.",
        QuickAlertType.error,
      );
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          height: 800,
          width: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "  VIP Plan Subscription",
                      style: TextStyle(
                        fontSize: 18,
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
                          "To Invest, send your investment fund to this address",
                          style: TextStyle(
                            fontSize: 12,
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
                                  fontSize: 10,
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
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Confirm your investment payment below, After making the investment payment!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 750,
                  color: Colors.transparent,
                  child: Container(
                    height: 700,
                    width: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 600,
                            width: 200,
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
                                buildInputWithTitleAndHint1(
                                  "Email",
                                  emailController,
                                  "Depositor's Email",
                                ),
                                buildInputWithTitleAndHint15(
                                  "Date",
                                  dateController,
                                  "Date of Payment",
                                ),
                                buildInputWithTitleAndHint15(
                                  "Plan",
                                  planController,
                                  "Type of Plan",
                                ),
                                buildInputWithTitleAndHint15(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: confirmSubscription,
                                          style: ElevatedButton.styleFrom(
                                            textStyle: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          child: const Text(
                                            "Confirm Subscription",
                                            style: TextStyle(
                                              fontSize: 10,
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
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget buildInputWithTitleAndHint15(
    String title, TextEditingController controller, String hint) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 10),
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
