import 'package:flutter/material.dart';

import '../../Data/sidebarlistitems.dart';
import '../../Utils/text_utils.dart';
class MediumScreenSideBar extends StatelessWidget {
  const MediumScreenSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectindex=0;
    return Container(
      padding:const  EdgeInsets.only(left: 10,top: 20,bottom: 20),
      color: Colors.white,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

              SizedBox(height: 50,
                width: 50,
                child:  Image.asset("assets/logo.png"),),



            const  SizedBox(height: 50,),
            ListView.builder(
                shrinkWrap:  true,
                itemCount: Sidebaritems().sidebarlistoption.length,
                itemBuilder: (context,index){
                  SidebarOption _items=Sidebaritems().sidebarlistoption[index];
                  // if(index==6){
                    // return Container(
                    //   padding: const EdgeInsets.all(30),
                    //   margin:const  EdgeInsets.symmetric(vertical: 40),
                    //   height: 230,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: Theme.of(context).primaryColor,
                    //     borderRadius: BorderRadius.circular(30),
                    //
                    //   ),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: [
                    //       const   Text("Go Premium",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold), maxLines: 1,
                    //         overflow: TextOverflow.ellipsis,
                    //         textAlign: TextAlign.center,),
                    //       const   SizedBox(height: 20,),
                    //       const   Text("    Explore 500+ Courses\n with Lifetime Membership",style: TextStyle(color: Colors.white,),
                    //         maxLines: 2,
                    //         overflow: TextOverflow.ellipsis,
                    //         textAlign: TextAlign.center,),
                    //       const    Spacer(),
                    //       Container(height: 50,width: double.infinity,
                    //         decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(20),
                    //
                    //         ),
                    //         alignment: Alignment.center,
                    //         child: const Text("Upgrade Now",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    //       )
                    //
                    //     ],
                    //   ),
                    // );
                  // }else{

                    return  Container(
                      margin:const  EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius:const  BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          color:selectindex==index? Theme.of(context).primaryColor: Colors.white
                      ),


                          child: Icon(_items.icons,color:selectindex==index? Colors.white:Colors.grey),



                    );}),

                // })



          ],
        ),
      ),
    );
  }
}
