import 'package:chatui/model/message.dart';
import 'package:flutter/material.dart';

class DetailsMessage extends StatelessWidget {
  final myId = 0;
  final list = Message.itemForUser();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            padding: EdgeInsets.all(15),
            child: ListView.separated(
                itemBuilder: (context, index) => list[index].user.id == myId
                    ? _buildReceivedText(list[index])
                    : _buildSenderText(list[index]),
                separatorBuilder: (_, index) => SizedBox(
                      width: 20,
                    ),
                itemCount: list.length),
          )
        ],
      ),
    );
  }

  Widget _buildReceivedText(Message message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(message.time),
        SizedBox(
          width: 7,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          )),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 180,
            ),
            child: Text(
              message.lastMessage,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Image.asset(
          message.user.iconUrl,
          width: 50,
        ),
      ],
    );
  }

  Widget _buildSenderText(Message message) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: message.user.bgcolor,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            message.user.iconUrl,
            width: 55,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: Colors.cyanAccent,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 180),
            child: Text(
              message.lastMessage,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Text(message.time)
      ],
    );
  }
}
