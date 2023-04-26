import 'package:flutter/material.dart';

import '../../Data/dashboarddata.dart';
import '../../Responsiveness/screensizes.dart';
import '../../Utils/shapeclipper.dart';
import '../../pages/LargeScreen/largescreendashboard.dart';
class DashBoardBody extends StatelessWidget {
  const DashBoardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return  Row(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    crossAxisCount: 4,
                    children: dashboardrowdata.map((element)=>Container(
                      decoration: BoxDecoration(
                        color: element.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipPath(
                            clipper: HexagonClipper(),
                            child: Container(
                              height: 80,  //<- change height width
                              width: 70,

                              color: element.cubecolor,
                              child: Icon(element.icon,color: Colors.white,),
                            ),
                          ),
                          const   SizedBox(height: 10,),
                          Text(element.title,style:  TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width<900?15: 20),),
                          const   SizedBox(height: 10,),
                          Text(element.count.toString(),style:  TextStyle(fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.width<900?14: 22),),
                        ],
                      ),

                    )).toList(),




                  ),
                  GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    crossAxisCount: 4,
                    children: dashboardcourserow.map((element)=>Container(
                      decoration: BoxDecoration(
                        color:const  Color(0xffd0d7f4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              flex: 5,
                              child: Container(
                            child: AspectRatio(

                                aspectRatio: 1/1.1,
                                child: Image.asset(element.image)),

                          )
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding:const  EdgeInsets.all(10),
                              width: double.infinity,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    element.description,style: const  TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.grey,),maxLines:MediaQuery.of(context).size.width<900?1: 2,overflow: TextOverflow.ellipsis,),
                                  const   Spacer(),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),

                                    child: LinearProgressIndicator(
                                      backgroundColor:const  Color(0xffd7d7f8),
                                      minHeight: 10,
                                      value: element.persentval,
                                      color: Theme.of(context).primaryColor,


                                    ),
                                  ),
                                  const    SizedBox(height: 10,),



                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      RichText(
                                        text: TextSpan(
                                          text: 'Completed :',
                                          style:  TextStyle(fontSize:MediaQuery.of(context).size.width<900?9: 11,color: Colors.grey),
                                          children:  <TextSpan>[
                                            TextSpan(text: element.persent.toString(), style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width<900?9:11)),

                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: 'Days :',
                                          style:  TextStyle(fontSize:MediaQuery.of(context).size.width<900?9: 11,color: Colors.grey),
                                          children:  <TextSpan>[
                                            TextSpan(text:element.days.toString(), style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: MediaQuery.of(context).size.width<900?9:11)),

                                          ],
                                        ),
                                      ),



                                    ],)
                                ],
                              ),
                            ),
                          )

                        ],
                      ),

                    )).toList(),




                  ),



                  const SizedBox(height: 30,),

                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                    decoration:const  BoxDecoration(
                        color: Colors.white
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const   Expanded(child: Text("Database",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),),
                            const   Text("Teacher",style: TextStyle(color: Colors.grey,fontSize: 18),),
                            const  SizedBox(width: 20,),
                            Text("Student",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 18),),
                            const  SizedBox(width:20,),
                            const  Text("Staff",style: TextStyle(color: Colors.grey,fontSize: 18),),
                            const   SizedBox(width: 20,),
                          ],
                        ),
                        const  SizedBox(height: 40,),
                        Row(
                          children: [
                            Expanded(
                              child: Theme(
                                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                child: DataTable(
                                  headingTextStyle:const  TextStyle(color: Colors.black,fontSize: 20),
                                  columns: const <DataColumn>[
                                    DataColumn(
                                      label: Expanded(
                                        child: Text(
                                          ' Student name',

                                        ),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Expanded(
                                        child: Text(
                                          'Score',

                                        ),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Expanded(
                                        child: Text(
                                          'Submitted',

                                        ),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Expanded(
                                        child: Text(
                                          'Grade',

                                        ),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Expanded(
                                        child: Text(
                                          'Pass/Fail',

                                        ),
                                      ),
                                    ),
                                  ],
                                  rows: studentlist.map((e) =>  DataRow(
                                    cells: <DataCell>[
                                      DataCell(Row(
                                        children: [
                                          const  CircleAvatar(
                                            backgroundColor: Color(0xfff0f0fa),
                                            child: Icon(Icons.person),
                                          ),
                                          const   SizedBox(width: 10,),
                                          Expanded(child: Text(e.name,style: TextStyle(color: Colors.grey.shade900,fontSize: 15),))
                                        ],
                                      )),
                                      DataCell( Text(e.score,style: TextStyle(color: Colors.grey.shade900,fontSize: 15),)),
                                      DataCell( Text(e.submitted,style: TextStyle(color: Colors.grey.shade900,fontSize: 15),)),
                                      DataCell( Text(e.grade,style: TextStyle(color: Colors.grey.shade900,fontSize: 15),)),
                                      DataCell( Container(
                                          height: 40,
                                          width: 80,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: e.result=="Pass"?const Color(0xffe6f2e9):const Color(0xfffae9e8)
                                          ),
                                          child: Text(e.result,style: TextStyle(color: e.result=="Pass"? Colors.green: Colors.deepOrangeAccent,fontSize: 14,fontWeight: FontWeight.bold,),))),
                                    ],
                                  ),).toList(),


                                ),
                              ),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],


              ),
            )),


        Responsiveness.isSmallScreen(context)||Responsiveness.isMediumScreen(context)?Container():const  Expanded(
            flex: 2,
            child: DashBoardSidePanel(

            ))
      ],
    );
  }
}
