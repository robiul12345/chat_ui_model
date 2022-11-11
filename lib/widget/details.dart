import 'package:chatui/model/message.dart';
import 'package:chatui/widget/contact_info.dart';
import 'package:flutter/material.dart';

import 'detailmessage.dart';
import 'detils_appbar.dart';

class DetilsPage extends StatelessWidget {

  final Message message;
  DetilsPage(this.message);
  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.blue ,

        body: Column(
          children: [
            DetailsAppBar(),
            ContactInFo(message),
            Expanded(child:  DetailsMessage(),)

          ],
        ),
      ),


    );
  }
}
