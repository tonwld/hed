import 'package:flutter/material.dart';
import 'package:flutter_auth/SensorScreen/components/body.dart';
import 'package:flutter_auth/constants_2.dart';

class SensorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: SensorScreenBody(),
    );
  }
}
