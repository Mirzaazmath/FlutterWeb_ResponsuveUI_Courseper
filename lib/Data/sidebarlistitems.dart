import 'package:flutter/material.dart';

///////////// This SideBar Data ////////////////////
class Sidebaritems{
  List<SidebarOption>sidebarlistoption=[
    SidebarOption(icons: Icons.bar_chart_outlined,title: "Dashboard"),
    SidebarOption(icons: Icons.grid_view_outlined,title: "Courses"),
    SidebarOption(icons: Icons.description_outlined,title: "Assignment"),
    SidebarOption(icons: Icons.task_alt_outlined,title: "Tasks"),
    SidebarOption(icons: Icons.chat_bubble_outline,title: "Messages"),
    SidebarOption(icons: Icons.group_outlined,title: "Friends"),
    SidebarOption(icons: Icons.dashboard,title: "Go Premium"),
    SidebarOption(icons: Icons.settings_outlined,title: "Setting"),
    SidebarOption(icons: Icons.logout_outlined,title: "Log out"),

  ];
}
class SidebarOption{
  IconData icons;
  String title;
  SidebarOption({required this.title,required this.icons});
}





List<SavedCourse>savedcourselist=[
  SavedCourse(title: 'Crypto Trading Advance', color:const  Color(0xffcedeed), image: 'assets/crypto.png', subtitile: 'Total  120 lessons',),
  SavedCourse(title: 'Youtube and Video Editing', color: const Color(0xffc5ecfa), image: 'assets/youtube.png', subtitile: '100 lessons',),
  SavedCourse(title: 'Gaming & Caper', color: const Color(0xffefe7f8), image: 'assets/game.png', subtitile: 'IOS based 60 lessons',),
  SavedCourse(title: 'Mobile Development', color:const  Color(0xfff7eede), image: 'assets/app.png', subtitile: '75+ lessons in this course',),
  
  
];



class SavedCourse{
  String image;
  Color color;
  String title;
  String subtitile;
  SavedCourse({required this.title,required this.color,required this.image,required this.subtitile});
  
  
}