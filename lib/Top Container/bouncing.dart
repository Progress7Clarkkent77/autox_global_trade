import 'package:flutter/material.dart';

class BouncingArrow extends StatefulWidget {
  const BouncingArrow({super.key});

  @override
  _BouncingArrowState createState() => _BouncingArrowState();
}

class _BouncingArrowState extends State<BouncingArrow>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // Adjust the duration as needed
    );

    // Create a bouncing curve for the animation
    final CurvedAnimation curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    // Create a Tween to define the range of the animation
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0, -0.2), // Start slightly above
      end: Offset.zero, // End at the normal position
    ).animate(curve);

    // Add a listener to rebuild the UI on each animation frame
    _controller.addListener(() {
      setState(() {});
    });

    // Repeat the animation indefinitely
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 600, // Adjust the top position as needed
      left: 0,
      right: 0,
      child: SlideTransition(
        position: _offsetAnimation,
        child: Container(
          height: 100, // Set the desired height
          color: Colors.transparent, // Blue background color
          child: Center(
            child: Icon(
              Icons.keyboard_arrow_down, // Use the downward-facing arrow icon
              size: 40, // Set the desired size
              color: Colors.white, // Set the desired color
            ),
          ),
        ),
      ),
    );
  }
}
