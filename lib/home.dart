

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiktok/right.dart';
import 'package:tiktok/tiktok.dart';

import 'left.dart';

class TikTokVideo extends StatelessWidget {


  const TikTokVideo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar:bottomItems() ,
      body: Stack(
        children: <Widget>[
          TikTokVideoPlayer(url: "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG"),
          title(),
          RightItems(
          ),
          LeftItems(

          )
        ],
      ),
    );
  }

   title() => Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 28.0),
      child: Text(
        "Trending | For You",
        style: TextStyle(color: Colors.white, fontSize: 19.0),
      ),
    ),
  );
  BottomNavigationBar bottomItems() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.pink[300],
      unselectedItemColor: Colors.white,
      elevation: 0.5,
      onTap: (int index) {

        // pageController.animateToPage(
        //   index,
        //   duration: Duration(
        //     milliseconds: 200,
        //   ),
        //   curve: Curves.easeIn,
        // );
      },

      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.indeterminate_check_box),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: SizedBox.shrink(),
        ),
      ],
    );
  }
}