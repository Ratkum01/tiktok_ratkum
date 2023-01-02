import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainContentLayout extends StatelessWidget {
  MainContentLayout();
  final videoUrls = <String>[
    'assets/videos/video.mp4',
    'assets/videos/video2.mp4',
    'assets/videos/video3.mp4'
  ];
  final ContentViews = <Widget>[
    ContentView(videoUrl: 'assets/videos/video.mp4'),
    ContentView(videoUrl: 'assets/videos/video2.mp4'),
    ContentView(videoUrl: 'assets/videos/video3.mp4'),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
        scrollDirection: Axis.vertical,
        children: videoUrls
            .map((String url) {return ContentView(
                  videoUrl: url,
                );})
            .toList());
  }
}

class ContentView extends StatelessWidget {
  final String videoUrl;
  const ContentView({required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
