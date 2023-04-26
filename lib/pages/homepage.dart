import 'package:courseper/Responsiveness/screensizes.dart';
import 'package:courseper/pages/MediumScreen/mediumscreen.dart';
import 'package:courseper/pages/SmallScreen/smallscreen.dart';
import 'package:flutter/material.dart';

import 'LargeScreen/largescreen.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsiveness(largeScreen: LargeScreen(), mediumScreen: MediumScreen(),smallScreen: SmallScreen(),)
    );
  }
}
