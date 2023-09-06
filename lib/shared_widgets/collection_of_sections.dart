import 'package:flutter/material.dart';
import 'intro_screen_section.dart';
class CollectionOfSections extends StatelessWidget {
  List logoList;
  List sectionNames;
  CollectionOfSections(this.logoList, this.sectionNames);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.builder(
              itemExtent: (width * 0.9)/ (logoList.length),
                itemCount: logoList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return IntroScreenSection(
                      logoList[index], sectionNames[index]);
                }),
          )
        ],
      ),
    );
  }
}
