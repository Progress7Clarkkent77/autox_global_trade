import 'package:autox_global_trade/home/Admin/admin.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AdminAuthDialog extends StatefulWidget {
  const AdminAuthDialog({Key? key}) : super(key: key);

  @override
  _AdminAuthDialogState createState() => _AdminAuthDialogState();
}

class _AdminAuthDialogState extends State<AdminAuthDialog> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> loginUser(BuildContext context) async {
    try {
      //UserCredential userCredential = await FirebaseAuth.instance
      //   .signInWithEmailAndPassword(
      //      email: emailController.text, password: passwordController.text);

      // Now you have the user credentials, you can fetch data from Firestore
      DocumentSnapshot adminSnapshot = await FirebaseFirestore.instance
          .collection('admin')
          .doc('adminLogin')
          .get();

      // Retrieve email and password from Firestore
      String adminEmail = adminSnapshot['adminEmail'];
      String adminPassword = adminSnapshot['adminPassword'];

      // Compare with the entered credentials
      if (emailController.text == adminEmail &&
          passwordController.text == adminPassword) {
        // Login successful, navigate to AdminDashboard
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AdminDashboard()),
        );
      } else {
        // Invalid credentials
        print('Invalid credentials!');
      }
    } on FirebaseAuthException catch (e) {
      // Handle authentication errors
      print('Authentication error: ${e.message}');
    } catch (e) {
      // Handle other errors
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 400,
            height: 350,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildInputWithTitleAndHint(
                  "Email",
                  emailController,
                  "Admin Email",
                ),
                buildInputWithTitleAndHint(
                  "Password",
                  passwordController,
                  "Admin Password",
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
                          onPressed: () {
                            loginUser(context);
                          },
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text("Login"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
}

class AdminDashboard1 extends StatelessWidget {
  const AdminDashboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
      ),
      body: Center(
        child: Text('Welcome to Admin Dashboard!'),
      ),
    );
  }
}
