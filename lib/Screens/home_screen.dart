import 'package:flutter/material.dart';
import 'package:toko/Constant/background.dart';
import 'package:toko/Constant/color.dart';
import 'package:toko/Widgets/income_widget.dart';
import 'Questions_screen.dart';
import 'Video_show.dart';
import 'app_download.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
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
                      SizedBox(width: 80,),
                      Row(
                        children: [
                          Text('مرحبا سالم',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 18),),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Image.asset('assets/person.png'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text('أربح من مشاهدة الإعلانات يوميا',
                    style: TextStyle(
                    fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                  ),),
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
                  padding: const EdgeInsets.only(right: 20,bottom: 15),
                  child: Text('أربح من',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                     color: Colors.black
                  ),),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      HaveIncome(
                        color: Colors.amber,
                        title: 'حل استبايانات',
                        icon: Icons.description,
                        onClick: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>QuestionScreen()));
                        },
                      ),
                      SizedBox(height: 5,),
                      HaveIncome(
                        color: Colors.orange,
                        title: 'تحميل التطبيقات',
                        icon: Icons.download_rounded,
                        onClick: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>AppDownload()));
                        },
                      ),
                      SizedBox(height: 5,),
                      HaveIncome(
                        color: Colors.blueAccent,
                        title: 'مشاهدة الفيديوهات',
                        icon: Icons.slow_motion_video_outlined,
                        onClick: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoShow()));
                        },
                      ),
                      SizedBox(height: 5,),
                      HaveIncome(
                        color: Colors.blueAccent,
                        title: 'إعجابات الفيس بوك',
                        icon: Icons.volunteer_activism,
                        onClick: (){},
                      ),
                      SizedBox(height: 5,),
                      HaveIncome(
                        color: Colors.blueAccent,
                        title: 'إعلانات الأدموب',
                        icon: Icons.live_tv_rounded,
                        onClick: (){},
                      ),
                      SizedBox(height: 10),
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
