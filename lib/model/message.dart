import 'package:chatui/model/user.dart';
import 'package:flutter/material.dart';

class Message {
  User user;
  String lastMessage;
  String time;
  bool isContiuns;

  Message(this.user, this.lastMessage, this.time, {this.isContiuns = false});

  static List<Message> item() {
    return [
      Message(users[0], "Good Night", "12:33"),
      Message(users[1], "Good Bye", "01;53"),
      Message(users[2], "All the Best", "2;03"),
      Message(users[3], "Good Night", "12;33"),
      Message(users[4], "Good Bye", "01;30"),
      Message(users[5], "Bye", "12;33"),
      Message(users[6], "Good Night", "2;53"),
    ];
  }

  static List<Message> itemForUser() {
    return [
      Message(users[0], "Hlw how are you", "12:33"),
      Message(users[1], "I am Fine and  How Are You", "01;53"),
      Message(me, "I am Fine", "2;03"),
      Message(me, "What are you doning now", "12;33"),
      Message(users[4], "I am working at home hardly", "01;30"),
      Message(users[5], "Thank you see agin", "12;33"),
      Message(me, "Good Night", "2;53"),
    ];
  }

}

var users = User.useritem();
var me = User(0, "Rasel", "Gazi", "images/p1.png", Color(0XFFFDEBC8));
