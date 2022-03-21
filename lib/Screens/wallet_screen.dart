import 'package:flutter/material.dart';
import 'package:toko/Constant/background.dart';
import 'package:toko/Constant/color.dart';
import 'package:toko/Widgets/build_question_label.dart';
class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.KPrimaryColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,size: 30,color: Colors.black,),
        ),
      ),
      body: Background(
        child: Center(
            child:Column(
//              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.deepPurple
                        ),
                        child: Icon(Icons.notification_important_outlined,size: 35,color: Colors.white,),
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text('خد فلوسك حالا وأشتري كرت شحن\n او كوبون او فاتورة ',
                            maxLines: 2,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                               fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                        ],
                      )
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
                        padding: const EdgeInsets.only(top: 10,bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15,left: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 80,
                                    child: Center(child: Text('أستبدل نقاطك',style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15
                                    ),)),
                                    decoration:BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text('عدد النقاط',style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      Text(' 200',style: TextStyle(
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
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius:BorderRadius.circular(10)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      height: 150,
                      width: MediaQuery.of(context).size.width *0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(right: 10,bottom: 10),
                  child: Text('خد فلوسك حالا',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      QuestionLabel(title: 'كروت الشحن',),
                      SizedBox(height: 15,),
                      QuestionLabel(title: 'فاتورة مطعم او لعبة',),
                      SizedBox(height: 15,),
                      QuestionLabel(title: 'كود كوبون',),
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
