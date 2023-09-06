import 'package:flutter/material.dart';
import 'package:urate/constants/constants.dart';
import 'package:urate/shared_widgets/collection_of_sections.dart';
import 'package:urate/shared_widgets/intro_screen_section.dart';

class IntroScreen extends StatelessWidget {
  Map<int, List> xxx = {
    0: [],
    1: [],
    2: [],
    3: [],
    4: [],
  };
  List<String> universities = [
    "Kuwait University",
    "The Public Authority for Applied Education and Training",
    "Private universities"
  ];
  List<String> collectionOfLogo = [
    "assets/images/kuwait-university-logo-removebg-preview.png",
    "assets/images/public-authority-logo-removebg-preview.png",
    "assets/images/private-university-logo-removebg-preview.png"
  ];

  List<String> universities2 = [
    "Private universities",
    "Kuwait University",
    "The Public Authority for Applied Education and Training",
    // "Private universities",
    "Private universities"
  ];
  List<String> collectionOfLogo2 = [
    "assets/images/private-university-logo-removebg-preview.png",
    "assets/images/kuwait-university-logo-removebg-preview.png",
    "assets/images/public-authority-logo-removebg-preview.png",
    "assets/images/private-university-logo-removebg-preview.png",
    // "assets/images/private-university-logo-removebg-preview.png"
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(
          top: height * 0.2,
          bottom: height * 0.1,
          right: width * 0.02,
          left: width * 0.02),
      width: width,
      height: height * 0.7,
      // color: Constants.kMaintBlueColor,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: CollectionOfSections(collectionOfLogo, universities)),
          SizedBox(height: height * 0.03),
          Expanded(
            flex: 1,
            child: CollectionOfSections(collectionOfLogo2, universities2),
          )
        ],
      ),
    );
  }
}
