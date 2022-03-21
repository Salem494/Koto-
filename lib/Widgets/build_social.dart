import 'package:flutter/material.dart';
import 'package:toko/Constant/color.dart';

class BuildSocailMedia extends StatelessWidget {
  final String title;
  final String image;
  final Color color;

  BuildSocailMedia({
    required this.title,
    required this.color,
    required this.image
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft:  Radius.circular(25),
            bottomLeft:  Radius.circular(25),
            bottomRight:  Radius.circular(25),
          ),
          borderSide: BorderSide.none
      ),
      elevation: 2.0,
      child: Container(
        height: 80,
        color: color,
        width: MediaQuery.of(context).size.height * 0.5,
        child:Padding(
          padding: const EdgeInsets.only(right: 5,left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(
                Icons.arrow_circle_down,
                color: Colors.blueAccent,
                size: 40,
              )),
             Row(
               children: [
               Text(title,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20,
                 ),),
               SizedBox(width: 20,),
               Image.asset(image,width: 50,height: 50,fit: BoxFit.cover,),
             ],
             ),
            ],
          ),
        ) ,
      ),
    );
  }
}
