import 'package:chatui/widget/message_time.dart';
import 'package:chatui/widget/recentcontact.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        margin: EdgeInsets.only(top: 25, left: 20),
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chat with \n your Frinds",
              style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            RecentContact(),
            MessageTime(),
          ],
        ),
      ),
    );
  }
}
