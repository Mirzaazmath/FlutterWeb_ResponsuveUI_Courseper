

import 'package:flutter/material.dart';


////////////// dashboard first row data /////////////////
List<DashBoardTotalRow>dashboardrowdata=[
  DashBoardTotalRow(
    title: "Total Students",count: 1460,color:const  Color(0xffddedfd),cubecolor:const  Color(0xff7887dd),icon: Icons.school_outlined
  ),
  DashBoardTotalRow(
      title: "Total Teacher",count: 200,color:const  Color(0xfff5effb),cubecolor:const  Color(0xffb28dec),icon: Icons.group_outlined
  ),
  DashBoardTotalRow(
      title: "Total Course",count: 20,color:const  Color(0xffdbedfb),cubecolor:const  Color(0xff677de4),icon: Icons.auto_stories_outlined
  ),
  DashBoardTotalRow(
      title: "Faculty Room",count: 150,color:const  Color(0xffebe4f4),cubecolor:const  Color(0xfffba5ad),icon: Icons.view_in_ar_outlined
  ),

];

////////////// dashboard course data /////////////////

List<DashBoardCourseRow>dashboardcourserow=[
  DashBoardCourseRow(description: "How to become Pro-interaction designer",image: "assets/ui.png",persent: 55,persentval: 0.55,days: "65/100"),
  DashBoardCourseRow(description: "User Interface beginner training class",image: "assets/training.png",persent: 25,persentval: 0.25,days: "13/45"),
  DashBoardCourseRow(description: "How to become Productive  Master class",image: "assets/idea.webp",persent: 73,persentval: 0.73,days: "18/20"),
  DashBoardCourseRow(description: "How to become pro in Flutter",image: "assets/flutter.png",persent: 81,persentval: 0.81,days: "70/85"),

];

///  student list  ///
List<Studentmodel>studentlist=[
  Studentmodel(name: "Glen Maxwell",score: "90/100",submitted: "10/8/10-20 PM",grade: "Excellent",result: "Pass"),
  Studentmodel(name: "Harry Wins",score: "88/100",submitted: "10/8/10-20 PM",grade: "Excellent",result: "Pass"),
  Studentmodel(name: "John Steve",score: "74/100",submitted: "10/8/10-20 PM",grade: "Average",result: "Pass"),
  Studentmodel(name: "Larry Page",score: "65/100",submitted: "10/8/10-20 PM",grade: "Good",result: "Pass"),
  Studentmodel(name: "Yeader Gill",score: "40/100",submitted: "10/8/10-20 PM",grade: "Poor",result: "Fail"),
];




///  Course model class ///
class DashBoardCourseRow{
  String description;
  String image;
  num persent;
  double persentval;
  String days;


  DashBoardCourseRow({required this.description,required this.persent,required this.persentval,required this.image,required this.days});
}


///  First row  model class ///
class DashBoardTotalRow{
  String title;
  IconData icon;
  int count;
  Color color;
  Color cubecolor;
  DashBoardTotalRow({required this.color,required this.title,required this.count,required this.icon,required this.cubecolor});
}

///  Student model class ///
class Studentmodel{
  String name;
  String score;
  String submitted;
  String grade;
  String result;
  Studentmodel({required this.name,required this.result,required this.grade,required this.score,required this.submitted});




}