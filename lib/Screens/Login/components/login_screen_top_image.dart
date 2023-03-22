import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: defaultPadding *0),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 4,
           child: SvgPicture.asset("assets/icons/Tabletlogin.svg"),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 0),
      ],
    );
  }
}