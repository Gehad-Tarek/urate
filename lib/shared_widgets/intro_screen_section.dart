import 'package:flutter/material.dart';

import '../constants/constants.dart';

class IntroScreenSection extends StatelessWidget {
  String IntroSectionLogo;
  String IntroSectionName;
  IntroScreenSection(this.IntroSectionLogo, this.IntroSectionName);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(height * 0.01),
      height: height * 0.25,
      child: Column(
          children: [
        Container(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.02, horizontal: width * 0.03),
          width: width * 0.25,
          height: height * 0.14,
          decoration: BoxDecoration(
              color: Constants.kPurpleColor, borderRadius: BorderRadius.circular(20)),
          child: Image.asset(
            IntroSectionLogo,
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Container(
          width: width * 0.23 ,
          // color: Colors.green,
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              IntroSectionName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              // textAlign: TextAlign.values.first,
              // textAlign: Alignment.center,
              style: TextStyle(
                  fontSize: 14,
                  color: Constants.kMaintGreenColor),
            ),
          ),
        ),
      ]),
    );
    // );
  }
}
