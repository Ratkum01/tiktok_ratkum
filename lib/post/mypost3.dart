import 'package:flutter/material.dart';

import '../util/post_temple.dart';
class MyPost3 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return PostTemple(
        username: 'Selena',
        videoDescription: 'pov',
        numberOfLikes: '77',
        numberOfComents: '696',
        numberOfShares: '88',
        userPost: Container(
          color: Color.fromARGB(255, 242, 69, 130),
        ));
  }
}