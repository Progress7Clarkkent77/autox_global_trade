import 'package:flutter/material.dart';

class FadingTextStyleAnimation extends StatefulWidget {
  @override
  _FadingTextStyleAnimationState createState() =>
      _FadingTextStyleAnimationState();
}

class _FadingTextStyleAnimationState extends State<FadingTextStyleAnimation> {
  double _opacity = 1.0;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  // Function to start the fading animation
  void _startAnimation() {
    // First fading step
    Future.delayed(const Duration(seconds: 400), () {
      setState(() {
        _opacity = 0.0;
      });
    });

    // Hide the text after a certain duration
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        _isVisible = false;
      });
    });

    // Reset the animation after a certain duration
    Future.delayed(const Duration(seconds: 12), () {
      setState(() {
        _isVisible = true;
        _opacity = 1.0;
        _startAnimation();
      });
    });
  }

  // Text widget with styling
  Widget styledText(String text, double fontSize) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          // Adding shadow to the text
          shadows: const [
            Shadow(
              color: Colors.black,
              offset: Offset(2.0, 2.0),
              blurRadius: 3.0,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isVisible ? _opacity : 0.0,
      duration: const Duration(seconds: 1),
      child: Container(
        height: 100,
        color: Colors.transparent,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 600) {
              // Mobile
              return Center(
                child: styledText(
                  'The best trades require research, then\ncommitment.',
                  20.0,
                ),
              );
            } else if (constraints.maxWidth <= 1200) {
              // Tablet
              return Positioned(
                top: 300,
                left: 0,
                right: 0,
                child: Container(
                  height: 100,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          styledText(
                            'The best trades require research, then',
                            25.0,
                          ),
                          styledText(
                            'commitment.',
                            25.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else {
              // Desktop
              return Positioned(
                top: 300,
                left: 0,
                right: 0,
                child: Container(
                  height: 100,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          styledText(
                            'The best trades require research, then',
                            25.0,
                          ),
                          styledText(
                            'commitment.',
                            25.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          // Displaying the fading text animation
          child: FadingTextStyleAnimation(),
        ),
      ),
    ),
  );
}
