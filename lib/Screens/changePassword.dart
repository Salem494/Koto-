import 'package:flutter/material.dart';
import 'package:toko/Constant/color.dart';

class ChangePassword extends StatefulWidget {

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();

  late String password,newPass,phone;

  bool _secureShow = true;

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
        title: Text('تغييركلمة المرور',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
          ),),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Center(
            child: Text('تغيير كلمة المرور ',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
          Center(
            child: Text('الرجاء إدخال كلمة مرور قوية تحتوي علي رموز وأرقام و حروف',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey
            ),
            ),
          ),
          Form(
            key:_formKey,
            child:Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            hintText: 'رقم التليفون',
                            suffixIcon: Icon(Icons.phone_bluetooth_speaker),
                            hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800
                            )

                        ),
                        textAlign: TextAlign.right,
                        onSaved: (value){
                          phone = value!;
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Please Enter Your Phone';
                          }else{
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        obscureText: _secureShow,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon:Icon(_secureShow?Icons.remove_red_eye:Icons.remove_red_eye_outlined) ,
                              onPressed: (){
                                setState(() {
                                  _secureShow = !_secureShow;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            hintText: 'كلمة المرور',
                            hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800
                            )

                        ),
                        textAlign: TextAlign.right,
                        onSaved: (value){
                          password = value!;
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Please Enter Your password';
                          }else{
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        obscureText: _secureShow,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon:Icon(_secureShow?Icons.remove_red_eye:Icons.remove_red_eye_outlined) ,
                              onPressed: (){
                                setState(() {
                                  _secureShow = !_secureShow;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            hintText: 'إعادة كلمة المرور',
                            hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800
                            )

                        ),
                        textAlign: TextAlign.right,
                        onSaved: (value){
                          password = value!;
                        },
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Please Enter Your password';
                          }else{
                            return null;
                          }
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                InkWell(
                  onTap:(){},
                  child: Container(
                    child: Center(child: Text('تغيير كلمة المرور',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),)),
                    decoration: BoxDecoration(
                      color: MyColor.KPrimaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 80,
                    width: MediaQuery.of(context).size.width* 0.6,
                  ),
                )
              ],
            ) ,
          ),
        ],
      ),
    );
  }
}
