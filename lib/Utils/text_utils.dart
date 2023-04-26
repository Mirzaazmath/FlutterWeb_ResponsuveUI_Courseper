import 'dart:math';

import 'package:flutter/material.dart';

class MainTitleText extends StatelessWidget {
  String title;
  MainTitleText(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title,style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 25),);
  }
}
