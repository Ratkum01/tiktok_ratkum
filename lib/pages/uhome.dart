import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';

import '../post/mypost1.dart';
import '../post/mypost2.dart';
import '../post/mypost3.dart';






class UserHomePage extends StatelessWidget {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
        MyPost2(),
        MyPost3()
        
        ],
      ),
    );
  }
}
// class UserHomePage extends StatefulWidget {
//    final String assets;

//   UserHomePage({required this.assets});

//   @override
//   State<UserHomePage> createState() => _UserHomePageState();
// }

// class _UserHomePageState extends State<UserHomePage> {
//   late VideoPlayerController videoPlayerController;
//   @override
//   void initState() {
//     videoPlayerController = VideoPlayerController.asset(widget.assets)
//       ..initialize().then((_) {
//         setState(() {
//           videoPlayerController.play(); //включять видео
//           videoPlayerController.setLooping(true); //цикл видео
//         });
//       });
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return VideoPlayer(videoPlayerController);
//   }
//   @override
//   void discope(){ // избигание для утечки памяти 
//     videoPlayerController.dispose();
//     super.dispose();
//   }
// }