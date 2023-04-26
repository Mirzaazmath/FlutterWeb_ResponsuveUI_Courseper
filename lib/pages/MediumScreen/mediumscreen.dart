
import 'package:flutter/material.dart';
import 'mediumScreensidebar.dart';
import 'mediumscreendashboard.dart';
class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Row(
        children: [
         const  SizedBox(
              width: 100,
              child:MediumScreenSideBar()
          ),
         const    Expanded(child: MediumScreenDashBoard()),





        ],
      ),
    );
  }
}
