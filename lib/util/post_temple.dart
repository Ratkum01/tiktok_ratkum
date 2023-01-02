import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tiktok_ratkum/util/button.dart';

class PostTemple extends StatelessWidget {
  final String username;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComents;
  final String numberOfShares;
  final userPost;
  const PostTemple({super.key, 
  required this.username,
  required this.videoDescription,
  required this.numberOfLikes,
  required this.numberOfComents,
  required this.numberOfShares,
  required this.userPost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userPost,
          Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                alignment: Alignment(-1, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '@${username}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(text: videoDescription),
                      TextSpan(
                          text: ' #fyp #flutter',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]))
                  ],
                ),
              )),
          Container(
            alignment: Alignment(1, 1),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              MyButton(icon: Icons.favorite, number: numberOfLikes),
              MyButton(icon: Icons.chat_bubble, number: numberOfComents),
              MyButton(icon: Icons.send_sharp, number: numberOfShares)
            ]),
          )
        ],
      ),
    );
  }
}
