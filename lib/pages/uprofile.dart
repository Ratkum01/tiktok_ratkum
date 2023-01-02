import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../util/profileta1.dart';
import '../util/profiletab2.dart';
import '../util/profiletab3.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.ac_unit_sharp),
          title: Text('RatkuM'),
          centerTitle: true,
          actions: [
            Icon(Icons.menu),
            Padding(padding: EdgeInsets.only(right: 18))
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
                image: DecorationImage(image: NetworkImage('https://yt3.ggpht.com/ytc/AMLnZu819UuSBr_wOODbK5lyX6S41dUO1jM-N3DHT6sx=s900-c-k-c0x00ffffff-no-rj'))
              ),
            ),
            SizedBox(
              height: 5,
            ),
            //username
            Text(
              '@ratkum',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            // number following, followers, likes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Text(
                          '37',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          '37',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Video',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          '37',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Likes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),

            //EDIT PROFILE
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Icon(Icons.camera_alt_outlined),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 7),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Icon(Icons.bookmark),
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 7),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            //BIO
            Text(
              'BIO PROFILE',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.grid_3x3,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
              ),
              
            ]),
            Expanded(
                  child: TabBarView(
                children: [
                  ProfTab1(),
                  ProfTab2(),
                  ProfTab3(),
                ],
              ))
          ],
        ),
      ),
    );
  }
}
