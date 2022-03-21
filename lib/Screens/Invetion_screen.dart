import 'package:flutter/material.dart';
import 'package:toko/Constant/color.dart';

class InvetionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
//        leading: IconButton(
//          onPressed: (){
//            Navigator.pop(context);
//          },
//          icon: Icon(Icons.arrow_back,color: Colors.white,),
//        ),
        backgroundColor: MyColor.KPrimaryColor,
        title: Text('دعوة الأصدقاء',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
          ),),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 12,
            itemBuilder: (context,index){
              return buildListTile(
                'سالم الحلو',
                '01059114811',

              );
            }),
      ),
    );
  }
  Widget buildListTile(String title,String subtitle){
    return ListTile(
      title:Text(title,
        textAlign: TextAlign.right,
        style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),),
      onTap:(){},
      trailing:  CircleAvatar(
        radius: 50.0,
        backgroundColor: Colors.grey,
        child: Image.asset('assets/person.png',fit: BoxFit.cover,
        height: 80,
        ),
      ),
      subtitle: Text(subtitle,
        style: TextStyle(fontWeight: FontWeight.w700),
        textAlign: TextAlign.right,),
      leading: Container(
        width: 50,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.grey,
            width: 1
          )
        ),
        child: Center(
          child: Text('دعوة',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.w400
          ),),
        ),
      ),
    );
  }
}
