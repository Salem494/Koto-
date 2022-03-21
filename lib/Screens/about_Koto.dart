import 'package:flutter/material.dart';
import 'package:toko/Constant/color.dart';

class AboutKoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        backgroundColor: MyColor.KPrimaryColor,
        title: Text('عن تطبيق كوتو',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
          ),),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: Text('عن تطبيق كوتو',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('لطالما كان الاعتقاد السائد في مجتمعاتنا العربية خاصة وربما فيالعالم أجمع عامة أن الشخصالناجح هو الذي يتفوق في دراستهصغيرا ويحقق الكثير من الشهادات العليا كبيرا، وهذا ما يعني',
              maxLines: 4,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('لطالما كان الاعتقاد السائد في مجتمعاتنا العربية خاصة وربما فيالعالم أجمع عامة أن الشخصالناجح هو الذي يتفوق في دراستهصغيرا ويحقق الكثير من الشهادات العليا كبيرا، وهذا ما يعني',
              maxLines: 4,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('لطالما كان الاعتقاد السائد في مجتمعاتنا العربية خاصة وربما فيالعالم أجمع عامة أن الشخصالناجح هو الذي يتفوق في دراستهصغيرا ويحقق الكثير من الشهادات العليا كبيرا، وهذا ما يعني',
              maxLines: 4,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),),
          ),
        ],
      ),
    );
  }
}
