import 'package:flutter/material.dart';
import 'package:flutter_auth/LandingScreen/components/body.dart';
import 'package:flutter_auth/constants_2.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: LandingScreenBody(),
    );
  }
}
