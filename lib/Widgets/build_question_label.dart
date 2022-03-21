import 'package:flutter/material.dart';
import 'package:toko/Screens/Answer_Screen.dart';

class QuestionLabel extends StatelessWidget {
 final String title;
 QuestionLabel({required this.title});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AnswerScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.only(
            left: 15,
            right: 15
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text('(نقطة200)',
                    style: TextStyle(
                        color: Color(0xfff6b18ff),
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.file_copy,color: Colors.green.shade300,)),
              ),
            ],
          ),
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xffff2faff),
              borderRadius: BorderRadius.circular(15.0)
          ),
        ),
      ),
    );
  }
}
