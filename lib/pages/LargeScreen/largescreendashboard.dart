import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../Data/dashboarddata.dart';
import '../../Data/sidebarlistitems.dart';
import '../../Utils/shapeclipper.dart';
import '../../components/appbarcomponent/appbar.dart';
import '../../components/dashboardbody/dashboardbody.dart';
class LargeScreenDashBoardScreen extends StatelessWidget {
  const LargeScreenDashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:   Color(0xfff8f9fd),
      appBar:  AppBarWidget(),
      body: SingleChildScrollView(
        child: DashBoardBody(),


      ),

    );
  }
}
class DashBoardSidePanel extends StatelessWidget {
  const DashBoardSidePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:const  EdgeInsets.all(20),
          padding: const EdgeInsets.all(15),
          height: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)

          ),

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                 const  Icon(Icons.arrow_back_ios),
                  Text(DateFormat.yMMMM().format(DateTime.now()),style:const TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                const   Icon(Icons.arrow_forward_ios),
                ],
              ),
            const   Spacer(),
              _adddatebar(context),

            ],
          ),
        ),
        Container(
          margin:const  EdgeInsets.all(20),
          padding: const EdgeInsets.all(15),
          height: 350,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)

          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:const  [
                        Text("Saved Courses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("Total 15 to view",style: TextStyle(fontSize: 15,color: Colors.grey),),

                      ],
                    ),

                  ),
                  Text("See all",style: TextStyle(fontSize: 15,color:Theme.of(context).primaryColor),),



                ],
              ),
              const SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: savedcourselist.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(

                          color: savedcourselist[index].color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(savedcourselist[index].image),
                      ),
                      title: Text(savedcourselist[index].title,style:const  TextStyle(fontWeight: FontWeight.w600),),
                      subtitle: Text(savedcourselist[index].subtitile),
                    );

                  })



            ],
          ),
        ),
        Container(
          margin:const  EdgeInsets.all(20),
          padding: const EdgeInsets.all(15),
          height: 450,
          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10)

          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const   Text("Scheduled",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
            const   SizedBox(height: 20,),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: savedcourselist.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin:const  EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          radius: 10,
                          child:const  Center(child: Icon(Icons.done,color: Colors.white,size: 10,)),

                        ),
                        title: const Text("Software Architecture",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: const Text("May 2 2023 from 8 AM to 10 PM",style: TextStyle(fontSize: 13,color: Colors.grey),),
                        trailing:const  Icon(Icons.ios_share),
                      ),
                    );

                  })




            ],
          ),
        )

      ],
    );
  }
  _adddatebar(context){
    return  Container(
      margin:const  EdgeInsets.all(10),
      child: DatePicker(
        DateTime.now(),
        height: 80,
        width: 60,
        initialSelectedDate: DateTime.now(),
        selectionColor: Theme.of(context).primaryColor,
        selectedTextColor: Colors.white,
        dateTextStyle:const  TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey
        ),
        dayTextStyle:const   TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey
        ),
          monthTextStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey
          ),
        onDateChange: (date){
          // setState(() {
          //   _selectedDate=date;
          // });

        },

      ),
    );
  }
}
