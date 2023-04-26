import 'package:courseper/components/appbarcomponent/appbar.dart';
import 'package:courseper/pages/SmallScreen/smallscreenbody.dart';
import 'package:flutter/material.dart';
import '../LargeScreen/largeSidebar.dart';
class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const  Scaffold(
        backgroundColor:   Color(0xfff8f9fd),
      drawer: Drawer(
        child: LargeScreenSideBar()
      ),
    appBar:AppBarWidget(),
      body: SmallScreenBody(),
    );
  }
}
