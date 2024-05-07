import 'package:autox_global_trade/home/home_desktop.dart';
import 'package:autox_global_trade/home/home_mobile.dart';
import 'package:autox_global_trade/home/home_tablet.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            // Mobile layout
            return MobileHome();
          } else if (constraints.maxWidth < 1200) {
            // Tablet layout
            return TabletHome();
          } else {
            // Desktop layout
            return DesktopHome();
          }
        },
      ),
    );
  }
}
