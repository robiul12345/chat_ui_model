import 'dart:ui';
import 'package:flutter/material.dart';

class User {
  num id;
  String fastName, lastName, iconUrl;
  Color bgcolor;

  User(this.id, this.fastName, this.lastName, this.iconUrl, this.bgcolor);

 static List<User> useritem() {
    return [
      User(0, "Rasel", "Hossain", "images/p1.png", Color(0xFF1A2EE1)),
      User(1, "Shila Akter", "Mim", "images/p1.png", Color(0xFFD212B2)),
      User(2, "Rana", "Gazi", "images/p2.png", Color(0xFFBD1717)),
      User(3, "Sakib", "Hossain", "images/p3.jpg", Color(0xFFEDEEF7)),
      User(4, "Rakib", "Alam", "images/p4.png", Color(0xFF1A2EE1)),
      User(5, "Mukbul", "Gazi", "images/p5.jpg", Color(0xFFEDEEF7)),
      User(6, "Jabed", "Hossan", "images/p1.png", Color(0xFFEDEEF7)),
    ];
  }
}
