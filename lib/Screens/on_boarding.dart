import 'package:flutter/material.dart';
import 'package:toko/Constant/color.dart';
import 'package:toko/Screens/login.dart';
import 'package:toko/Screens/register.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6b18ff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(
            height: MediaQuery.of(context).size.height*0.3,
            width: double.infinity,
            child: const Center(
              child: Text('KOTO',style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.w700
              ),),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height *0.7,
            width: double.infinity,
            child:Stack(
              children:[
               Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                        InkWell(
                          child: Container(
                            width: 300,
                            height: 50,
                            child: Center(
                              child: Text('تسجيل الدخول ',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                  fontSize: 15
                              ),),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xfff6b18ff)
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                          },
                        ),
                       SizedBox(height: 15,),
                       InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                        },
                         child: Container(
                           width: 300,
                           height: 50,
                         child: Center(
                           child: Text('تسجيل حساب جديد ',style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.black,
                             fontSize: 15
                           ),),
                         ),
                         decoration: BoxDecoration(
                           border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(25),
                         ),
                     ),
                       ),
                   ],
                 ),
               ),

                Positioned(
                    left: 150,
                    top: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('جمع وأربح مع كوتو',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                        ),),
                        SizedBox(height: 10,),
                        Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50),
                            ),),
                            SizedBox(width:  5,),
                            Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50),
                            ),),
                            SizedBox(width:  5,),
                            Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                            ),),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
            decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              )
            ),
          ),
        ],
      ),
    );
  }
}
