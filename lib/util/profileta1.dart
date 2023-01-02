import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfTab1 extends StatelessWidget {
  const ProfTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
           
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://i.imgur.com/wqbmDGr.jpg')), color: Colors.grey,)
          ),
        );
      }),
    );
  }
}
