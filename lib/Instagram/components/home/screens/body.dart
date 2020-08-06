import 'package:build_clone/Instagram/components/home/screens/following_post.dart';
import 'package:build_clone/Instagram/components/home/screens/storyline.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          StoryLine(size: size),
          Following_Post(size: size),
        ],
      ),
    );
  }
}
