import 'package:flutter/material.dart';

class LeftItems extends StatefulWidget {


  const LeftItems(
    );

  @override
  _LeftItemsState createState() => _LeftItemsState();
}

class _LeftItemsState extends State<LeftItems>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-2.0, 0.0),
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.only(left : 8.0),
        width: 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "@danny",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 12.0),
            Text(
              "sxyy boii",
              overflow: TextOverflow.clip,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 14.0),
            musicInfo(),
            SizedBox(height: 12.0),
          ],
        ),
      ),
    );
  }

  Widget musicInfo() {
    return Row(
      children: <Widget>[
        Icon(Icons.music_note, color: Colors.white, size: 15.0),
        SizedBox(width: 5.0),
        SlideTransition(
          position: _offsetAnimation,
          child: Center(
            child: Text(
              "DAnny Boii",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}