import 'package:flutter/material.dart';
import 'package:urate/constants/constants.dart';

class ArabicComment extends StatelessWidget {
  String comment;

  ArabicComment(this.comment);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(
            left: width * 0.04,
            top: height * 0.025,
            bottom: height * 0.025,
            right: width * 0.06),
        margin: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: 8),
        decoration: BoxDecoration(
            color: Constants.kPurpleColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomLeft: Radius.circular(32),
            )),
        child: Text(
          "${comment}",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
    ;
  }
}
