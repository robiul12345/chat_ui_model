import 'package:chatui/model/message.dart';
import 'package:chatui/model/user.dart';
import 'package:flutter/material.dart';

import 'details.dart';

class MessageTime extends StatelessWidget {
  const MessageTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lastitem = Message.item();
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        color: Colors.white,
      ),
      child: ListView.builder(
          itemCount: lastitem.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetilsPage(
                      lastitem[index]
                    )));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: lastitem[index].user.bgcolor,
                        shape: BoxShape.circle),
                    child: Image.asset(
                      lastitem[index].user.iconUrl,
                      width: 60,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        lastitem[index].user.fastName +
                            "  " +
                            lastitem[index].user.lastName,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        lastitem[index].lastMessage,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Text(
                    lastitem[index].time,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            );
          }),
    ));
  }
}
