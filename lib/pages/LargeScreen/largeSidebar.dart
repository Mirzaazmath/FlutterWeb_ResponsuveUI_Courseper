import 'package:flutter/material.dart';

import '../../Data/sidebarlistitems.dart';
import '../../Utils/text_utils.dart';
class LargeScreenSideBar extends StatelessWidget {
  const LargeScreenSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectindex=0;
    return Container(
      padding:const  EdgeInsets.all(20),
      color: Colors.white,
      height: double.infinity,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(children: [
               SizedBox(height: 50,
               width: 50,
               child:  Image.asset("assets/logo.png"),),
               const  SizedBox(width: 20,),
                Expanded(child: MainTitleText("CoursePer"))
              ],),
             const  SizedBox(height: 50,),
              ListView.builder(
                physics:const  NeverScrollableScrollPhysics(),
                shrinkWrap:  true,
                itemCount: Sidebaritems().sidebarlistoption.length,
                  itemBuilder: (context,index){
                    SidebarOption _items=Sidebaritems().sidebarlistoption[index];
                    if(index==6){
                      return Container(
                        padding: const EdgeInsets.all(30),
                        margin:const  EdgeInsets.symmetric(vertical: 40),
                        height: 230,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(30),

                      ),
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          const   Text("Go Premium",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold), maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,),
                          const   SizedBox(height: 20,),
                          const   Text("    Explore 500+ Courses\n with Lifetime Membership",style: TextStyle(color: Colors.white,),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,),
                      const    Spacer(),
                            Container(height: 50,width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),

                            ),
                              alignment: Alignment.center,
                              child: const Text("Upgrade Now",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                            )

                          ],
                        ),
                     );
                    }else{

                  return  Container(
                    margin:const  EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:selectindex==index? Theme.of(context).primaryColor: Colors.white
                    ),
                    child: Row(
                      children:  [
                        Icon(_items.icons,color:selectindex==index? Colors.white:Colors.grey),
                       const  SizedBox(width: 30,),
                        Text(_items.title,style: TextStyle(color:selectindex==index? Colors.white:Colors.grey,fontSize: 17),overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,
                        maxLines: 1,)
                      ],
                    ),
                  );}

              })



            ],
          ),
        ),
      ),
    );
  }
}

