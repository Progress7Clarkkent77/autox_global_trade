// import 'package:clipboard/clipboard.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final emailController = TextEditingController();
  final walletController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Payout');

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
          walletController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> depositData = {
          'email': emailController.text,
          'date': walletController.text,
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
        walletController.clear();
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
                "Payout",
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
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "To withdraw, Fill the input below and and request withdraw",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
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
                            "Wallet",
                            walletController,
                            "Wallet Address",
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
                                    child: const Text("Request Withdraw"),
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

//---------------------------------------------------------------//

class NotificationScreen1 extends StatefulWidget {
  const NotificationScreen1({Key? key}) : super(key: key);

  @override
  State<NotificationScreen1> createState() => _NotificationScreen1State();
}

class _NotificationScreen1State extends State<NotificationScreen1> {
  final emailController = TextEditingController();
  final walletController = TextEditingController();
  final amountController = TextEditingController();
  final DatabaseReference dbRef =
      FirebaseDatabase.instance.ref().child('Payout');

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
          walletController.text.isNotEmpty &&
          amountController.text.isNotEmpty) {
        Map<String, String> depositData = {
          'email': emailController.text,
          'date': walletController.text,
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
        walletController.clear();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payout',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ), // Set app bar title to 'Payout'
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "To withdraw, fill in the inputs below and request withdraw",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 400,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 0, color: Colors.grey),
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
                          buildInputWithTitleAndHint100(
                            "Email",
                            emailController,
                            "Depositor's Email",
                          ),
                          buildInputWithTitleAndHint100(
                            "Wallet",
                            walletController,
                            "Wallet Address",
                          ),
                          buildInputWithTitleAndHint100(
                            "Amount",
                            amountController,
                            "Enter the amount Deposited",
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                            onPressed: submitDeposit,
                            style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 15,
                              ),
                            ),
                            child: const Text("Request Withdraw",
                                style: TextStyle(
                                  fontSize: 12,
                                )),
                          ),
                        ],
                      ),
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

Widget buildInputWithTitleAndHint100(
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
                fontSize: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          ),
        ),
      ],
    ),
  );
}
