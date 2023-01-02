import 'package:flutter/material.dart';

import '../util/post_temple.dart';

class MyPost1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemple(
      numberOfComents: '555',
      numberOfShares: '77',
      username: 'ratkuM',
      numberOfLikes: '999+',
      userPost: Container(color: Colors.black),
      videoDescription: 'new Post',
    );
  }
}
