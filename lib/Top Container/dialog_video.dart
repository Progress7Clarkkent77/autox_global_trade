import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

// DialogContainer class
class DialogContainer extends StatefulWidget {
  @override
  _DialogContainerState createState() => _DialogContainerState();
}

class _DialogContainerState extends State<DialogContainer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // Replace 'your_video_url' with the actual URL or asset path of your video
    _videoPlayerController = VideoPlayerController.asset('assets/video1.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9, // Adjust the aspect ratio based on your video
      autoInitialize: true,
      looping: false,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      title: null,
      content: Container(
        width: 600,
        height: 400,
        //color: Colors.transparent,
        child: Chewie(
          controller: _chewieController,
        ),
      ),
      contentPadding: const EdgeInsets.all(0),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Close',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
