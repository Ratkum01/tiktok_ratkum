import 'package:flutter/material.dart';
import 'package:tiktok_ratkum/util/post_temple.dart';

class MyPost2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemple(
        username: 'Jone',
        videoDescription: 'pov',
        numberOfLikes: '55',
        numberOfComents: '696',
        numberOfShares: '88',
        userPost: Container(
          color: Colors.pink[100],
        ));
  }
}
