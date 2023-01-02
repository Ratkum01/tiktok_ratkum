import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfTab2 extends StatelessWidget {
  const ProfTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder:((context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
           
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://mtdata.ru/u5/photoA705/20997632042-0/original.jpg')), color: Colors.grey,)
          ),
        );
      }),
    );
  }
}