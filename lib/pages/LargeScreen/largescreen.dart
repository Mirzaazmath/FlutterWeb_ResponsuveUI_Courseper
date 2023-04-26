import 'package:flutter/material.dart';

import 'largeSidebar.dart';
import 'largescreendashboard.dart';
class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     children:const  [
        SizedBox(
       width: 280,
         child:LargeScreenSideBar()
       ),
       Expanded(

         child: LargeScreenDashBoardScreen(),


       ),
     ],

    );
  }
}
