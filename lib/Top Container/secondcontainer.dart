import 'package:flutter/material.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Pending.....', // Replace with your desired text
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
