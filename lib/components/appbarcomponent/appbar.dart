import 'package:flutter/material.dart';

import '../../Responsiveness/screensizes.dart';
class AppBarWidget extends StatelessWidget with PreferredSizeWidget{
  const AppBarWidget({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {

    return PreferredSize(
      preferredSize:const  Size.fromHeight(70.0), // here the desired height
      child:
      // ...


      AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Responsiveness.isSmallScreen(context)? Colors.white:Colors.transparent,
        elevation: 0,
        actions: Responsiveness.isSmallScreen(context)?[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Theme.of(context).primaryColor)),
          )
        ]: [],

        title: Responsiveness.isSmallScreen(context)?const  Text("DashBoard",style: TextStyle(fontWeight: FontWeight.normal,),):

        Container(
          padding:const  EdgeInsets.symmetric(horizontal: 30),

          width: double.infinity,
          height: 60,
          color: Colors.white,
          alignment: Alignment.center,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)

                  ),
                  alignment: Alignment.center,
                  height:40,
                  child: TextFormField(

                    decoration:  InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.search,color: Theme.of(context).primaryColor,)
                    ),
                  ),


                ),
              ),

              Expanded(
                child: Container(
                  height: 40,
                  width: 100,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                    Container(
                        padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children:const  [
                            Icon(Icons.calendar_month,size: 20,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text("Routine",style: TextStyle(fontSize: 14,color: Colors.white),)
                          ],
                        ),
                      ),
                      const  SizedBox(width: 30,),
                      const  Icon(Icons.chat_bubble_outline,color: Colors.grey,),
                      const  SizedBox(width: 30,),
                      CircleAvatar(
                        backgroundColor: const Color(0xffebf3f9),
                        child: Icon(Icons.person,color: Theme.of(context).primaryColor,),
                      ),

                      Responsiveness.isSmallScreen(context)||Responsiveness.isMediumScreen(context)?  Row(
                       children:const  [
                           SizedBox(width: 20,),
                         Icon(Icons.more_vert,color: Colors.black,)
                       ],
                     ):Container(),
                    ],
                  ),

                ),
              )
            ],
          ),
        ),

      ),);
  }
}
