import 'package:chatui/model/user.dart';
import 'package:flutter/material.dart';

class RecentContact extends StatelessWidget {
  RecentContact({Key? key}) : super(key: key);

  final contact_list = User.useritem();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.green.withOpacity(.5)),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
          Expanded(
            child: Container(
            
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: contact_list[index].bgcolor),
                    child: Image.asset(contact_list[index].iconUrl)),
                separatorBuilder: (_, index) => SizedBox(
                  width: 10,
                ),
                itemCount: contact_list.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
