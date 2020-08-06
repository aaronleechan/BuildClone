import 'package:build_clone/Instagram/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/home/screens/body.dart';

class Instagram_Clone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              left: kPadding,
              right: kPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.home,
                    size: kIconSize,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: kIconSize,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_box,
                    size: kIconSize,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: kIconSize,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    size: kIconSize,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: IconButton(
        icon: Icon(
          Icons.camera_alt,
          size: kIconSize,
        ),
        color: Colors.black,
        onPressed: () {},
      ),
      title: Center(
        child: Text(
          'Instagram',
          style: TextStyle(
            fontSize: kIconSize,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway',
          ),
        ),
      ),
      actions: <Widget>[
        Transform.rotate(
          angle: 6,
          child: IconButton(
            icon: Icon(
              Icons.send,
              size: kIconSize,
            ),
          ),
        )
      ],
    );
  }
}
