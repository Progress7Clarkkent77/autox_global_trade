import 'package:flutter/material.dart';

class FadingTextAnimation extends StatefulWidget {
  @override
  _FadingTextAnimationState createState() => _FadingTextAnimationState();
}

class _FadingTextAnimationState extends State<FadingTextAnimation> {
  double _opacity = 1.0;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(Duration(seconds: 300), () {
      setState(() {
        _opacity = 0.0;
      });
    });

    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        _isVisible = false;
      });
    });

    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        _isVisible = true;
        _opacity = 1.0;
        _startAnimation();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isVisible ? _opacity : 0.0,
      duration: Duration(seconds: 1),
      child: Text(
        MediaQuery.of(context).size.width > 600
            ? 'AutoX Global Trade' // For larger screens
            : 'AutoXGT', // For smaller screens (e.g., mobile)
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
