import 'package:clipboard/clipboard.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class DepositScreen1 extends StatefulWidget {
  const DepositScreen1({Key? key}) : super(key: key);

  @override
  State<DepositScreen1> createState() => _DepositScreen1State();
}

class _DepositScreen1State extends State<DepositScreen1> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deposit"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "To make your deposit, send your deposit fund to this address",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
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
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.copy,
                    color: Colors.black,
                    size: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Confirm your deposit payment below, After making the deposit payment!",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: submitDeposit,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text("Confirm Deposit"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInputWithTitleAndHint(
      String title, TextEditingController controller, String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
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
                borderRadius: BorderRadius.circular(10),
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
}
