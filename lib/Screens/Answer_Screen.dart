import 'package:flutter/material.dart';
import 'package:toko/Constant/background.dart';


class AnswerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 25,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.amberAccent
                              ),
                              child: Icon(
                                Icons.notification_important_outlined, size: 35,
                                color: Colors.white,),
                            ),
                            Text('الإستبايانات', style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Center(
                        child: Card(
                          elevation: 8.0,
                          color: Colors.white,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15, left: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 80,
                                          child: Center(child: Text(
                                            'أستبدل نقاطك', style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 15
                                          ),)),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius: BorderRadius.circular(
                                                15),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text('عدد النقاط', style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                            Text(' 200', style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 15,

                                            ),),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      height: 40,
                                      width: MediaQuery
                                          .of(context)
                                          .size
                                          .width * 0.7,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(
                                              10)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            height: 150,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                    ]
                )
            ))
    );
  }
}
