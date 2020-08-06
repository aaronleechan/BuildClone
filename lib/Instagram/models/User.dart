import 'package:flutter/material.dart';

class User {
  final String username, location, profileImage;
  final List image;
  final int id;
  User({
    this.id,
    this.username,
    this.location,
    this.profileImage,
    this.image,
  });
}

List<User> users = [
  User(
    id: 1,
    username: "NATURO",
    location: "Tokoyo",
    profileImage: "assets/images/naruto.jpg",
    image: ["assets/images/naruto1.png", "assets/images/naruto2.jpeg"],
  ),
  User(
    id: 2,
    username: "ATTACK ON TITAN",
    location: "Hawaii",
    profileImage: "assets/images/attack.jpg",
    image: ["assets/images/attack1.jpg", "assets/images/attack2.jpg"],
  ),
  User(
    id: 3,
    username: "ONE PIECE",
    location: "beach",
    profileImage: "assets/images/onepiece.png",
    image: ["assets/images/onepiece1.jpg", "assets/images/onepiece2.jpg"],
  ),
  User(
    id: 4,
    username: "POKEMON",
    location: "island",
    profileImage: "assets/images/poke.jpg",
    image: ["assets/images/poke1.jpg", "assets/images/poke2.png"],
  ),
  User(
    id: 5,
    username: "GIRL",
    location: "japan",
    profileImage: "assets/images/girl1.jpg",
    image: ["assets/images/girl.jpg"],
  ),
];
