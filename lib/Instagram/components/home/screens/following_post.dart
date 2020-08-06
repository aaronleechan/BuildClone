import 'package:build_clone/Instagram/models/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Following_Post extends StatelessWidget {
  final Size size;
  const Following_Post({Key key, this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(users[0].image[0]);
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            UserPost(
              size: size,
              profileImage: users[0].profileImage,
              image: users[0].image[0],
              username: users[0].username,
            ),
            UserPost(
              size: size,
              profileImage: users[1].profileImage,
              image: users[1].image[0],
              username: users[1].username,
            ),
            UserPost(
              size: size,
              profileImage: users[2].profileImage,
              image: users[2].image[1],
              username: users[2].username,
            ),
            UserPost(
              size: size,
              profileImage: users[3].profileImage,
              image: users[3].image[1],
              username: users[3].username,
            ),
          ],
        ),
      ),
    );
  }
}

class UserPost extends StatelessWidget {
  final String profileImage;
  final String image;
  final String username;
  const UserPost({
    Key key,
    @required this.size,
    this.profileImage,
    this.image,
    this.username,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        height: size.height * 0.7,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(profileImage),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  username,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.linear_scale, size: 20),
                  onPressed: () {},
                ),
              ],
            ),
            Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.favorite)),
                    IconButton(icon: Icon(Icons.chat_bubble_outline)),
                    IconButton(icon: Icon(Icons.send)),
                    Spacer(),
                    IconButton(icon: Icon(Icons.save)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "Liked by aaron and others",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
