import 'package:chatui/model/message.dart';
import 'package:flutter/material.dart';

class ContactInFo extends StatelessWidget {
  Message message;

  ContactInFo(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            " ${message.user.fastName}\n "
            "${message.user.lastName}",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Row(
            children: [
              buildContainer(Icons.phone),
              SizedBox(width: 5,),
              buildContainer(Icons.video_camera_back),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainer(IconData iconData) {
    return Container(
              padding: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              child: Icon(
                iconData,
                color: Colors.white,
                size: 35,
              ),
            );
  }
}
