//import 'package:autox_global_trade/home/user_home_test.dart';
import 'package:autox_global_trade/Authentication/providers/app.dart';
import 'package:autox_global_trade/Authentication/providers/auth.dart';
import 'package:autox_global_trade/Authentication/widgets/custom_text.dart';
import 'package:autox_global_trade/all%20code/screens/authscreens/spalshscreen.dart';
import 'package:autox_global_trade/base.dart';
import 'package:autox_global_trade/home/User/user_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:nb_utils/nb_utils.dart';

class AuthDialog extends StatefulWidget {
  const AuthDialog({super.key});

  @override
  _AuthDialogState createState() => _AuthDialogState();
}

class _AuthDialogState extends State<AuthDialog> {
  /// Define a TextEditingController, a FocusNode and a boolean to track whether the text field is being used.

  @override
  Widget build(BuildContext context) {
    final AuthProvider authProvider = Provider.of<AuthProvider>(context);
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 400,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 10),
                CustomText(
                  text: "Continue with Google",
                  color: Colors.white,
                  size: 20,
                  weight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () async {
                    appProvider.changeLoading();
                    Map result = await authProvider.signInWithGoogle();
                    bool success = result['success'];
                    String message = result['message'];
                    print(message);

                    if (!success) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(message)));
                      appProvider.changeLoading();
                    } else {
                      appProvider.changeLoading();
                      Get.offAllNamed(
                          "/dashboard"); // Navigate to '/dashboard' immediately
                    }

                    //   if (!success) {
                    //     // ignore: use_build_context_synchronously
                    //     ScaffoldMessenger.of(context)
                    //         .showSnackBar(SnackBar(content: Text(message)));
                    //     appProvider.changeLoading();
                    //   } else {
                    //     appProvider.changeLoading();
                    //     // ignore: use_build_context_synchronously
                    //     const SplashScreen().launch(context);
                    //   }
                    // },
                    child:
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 10, 1, 1),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.3),
                                offset: const Offset(2, 3),
                                blurRadius: 7)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 25,
                                child: Image.asset(
                                  "assets/images/google_logo.png",
                                  width: 25, // Set your desired width
                                  height: 25, // Set your desired height
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomText(
                                text: "Use Google",
                                color: Colors.white,
                                size: 16.0,
                                weight: FontWeight.bold,
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
