import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class AccountScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.kMaintGreenColor,
      child: Center(
          child: Text(
        "Account Screen",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      )),
    );
  }
}
