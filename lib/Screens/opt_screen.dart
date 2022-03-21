import 'package:flutter/material.dart';
import 'package:toko/Constant/color.dart';
import 'package:toko/Screens/push_image.dart';

class OPTScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 30,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text('تأكيد رقم الهاتف',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: MyColor.KPrimaryColor
              ),),
               SizedBox(
                 height: 15,
               ),
              Text('الرجاء إدخال رمز التحقق اللي إتبعت لتلفونك',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w100
              ),),
               SizedBox(
                 height: 25,
               ),
              Padding(
                padding: const EdgeInsets.only(right: 15,left: 15,top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _textFieldOTP(context,first: true, last: false),
                    _textFieldOTP(context,first: false, last: false),
                    _textFieldOTP(context,first: false, last: false),
                    _textFieldOTP(context,first: false, last: true),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text('ستنتهي صلاحية رمز التحقق في 2:59', style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),),
              Text('إعادة إرسال رمز التحقق',
                style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: MyColor.KPrimaryColor,
              ),),
              SizedBox(height: 180,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PushImage()));
                  },
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(MyColor.KPrimaryColor),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'تأكيد رقم الهاتف',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }

  Widget _textFieldOTP(context,{required bool first, last}) {
    return Container(
      height: 80,
      width: 60,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: MyColor.KPrimaryColor),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
