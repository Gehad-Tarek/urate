import 'package:flutter/material.dart';

import '../constants/constants.dart';

class EnglishComment extends StatelessWidget {
  String comment;
  EnglishComment(this.comment);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: width* 0.04, top: height * 0.025, bottom:height * 0.025, right: width* 0.06),
        // alignment: Alignment.centerLeft,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            color: Constants.kPurpleColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32),
            )),
        child: Text(
         "${comment}",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 1.5),
        ),
      ),
    );
  }
}
