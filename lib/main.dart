import 'package:autox_global_trade/Authentication/providers/app.dart';
import 'package:autox_global_trade/Authentication/providers/auth.dart';
// import 'package:autox_global_trade/home/Admin/admin.dart';
// import 'package:autox_global_trade/home/User/user_desktop.dart';
// import 'package:autox_global_trade/home/User/user_home.dart';
import 'package:autox_global_trade/home/home.dart';
//import 'package:autox_global_trade/Top%20Container/crypto_page.dart';
// import 'package:autox_global_trade/Top%20Container/gold_mining.dart';
// import 'package:autox_global_trade/Top%20Container/loan.dart';
// import 'package:autox_global_trade/Top%20Container/non_farm.dart';
// import 'package:autox_global_trade/Top%20Container/real_estate.dart';
// import 'package:autox_global_trade/Top%20Container/stock.dart';
// import 'package:autox_global_trade/Top%20Container/third_container.dart';

//import 'package:autox_global_trade/home/home.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:autox_global_trade/Authentication/auth.dart';
//import 'package:autox_global_trade/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

//import 'package:sug_award/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase

  await Firebase.initializeApp(
    // Replace with your actual values
    options: const FirebaseOptions(
        apiKey: "AIzaSyAMpCub3CuwS5x--hD6HRrAicJmqv-eAxo",
        authDomain: "auto-global-trade.firebaseapp.com",
        databaseURL: "https://auto-global-trade-default-rtdb.firebaseio.com",
        projectId: "auto-global-trade",
        storageBucket: "auto-global-trade.appspot.com",
        messagingSenderId: "191266160460",
        appId: "1:191266160460:web:c7fb70f3abf81133fbd9e9"),
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
            create: (context) => AuthProvider.init()),
        ChangeNotifierProvider<AppProvider>(create: (context) => AppProvider()),
      ],
      child: MyApp(),
    ),
  );
}

// We Modify the MyApp to a StatefulWidget.
//class MyApp extends StatefulWidget {
//@override
// _MyAppState createState() => _MyAppState();

// class _MyAppState extends State<MyApp> {
//   /// To define a method called getUserInfo to invoke the getUser function:
//   Future getUserInfo() async {
//     await getUser();
//     setState(() {});
//     print(uid);
//   }

// @override
// void initState() {
//   /// To Call it from the initState method
//   getUserInfo();
//   super.initState();
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AutoX Global Trade',
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,

      /// for navigate to Home page
      home: const Home(),
    );
  }
}
