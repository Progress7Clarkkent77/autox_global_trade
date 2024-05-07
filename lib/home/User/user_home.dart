import 'package:autox_global_trade/home/User/user_desktop.dart';
import 'package:autox_global_trade/home/User/user_mobile.dart';
import 'package:autox_global_trade/home/User/user_tablet.dart';
import 'package:flutter/material.dart';

class HomeUser extends StatelessWidget {
  const HomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            // Mobile layout
            return const UserHomeMobile();
          } else if (constraints.maxWidth < 1200) {
            // Tablet layout
            return const UserHomeTablet();
          } else {
            // Desktop layout
            return const UserHomeDesktop();
          }
        },
      ),
    );
  }
}
