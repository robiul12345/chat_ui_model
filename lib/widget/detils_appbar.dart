import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Back",
                style: TextStyle(fontSize: 24,color: Colors.white60),
              )),
          TextButton(
              onPressed: () {},
              child: Text(
                "Search",
                style: TextStyle(fontSize: 24,color: Colors.white60),
              )),
        ],
      ),
    );
  }
}
