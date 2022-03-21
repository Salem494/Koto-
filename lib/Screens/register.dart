import 'package:flutter/material.dart';
import 'package:toko/Constant/color.dart';
import 'package:toko/Screens/opt_screen.dart';

import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _formKey = GlobalKey<FormState>();
  late String email,firstName,lastName,phone;
  bool _secureShow = true;

  onClick(){
    if(_formKey.currentState!.validate()){
//      ScaffoldMessenger.of(context).showSnackBar(
//        const SnackBar(content: Text('Done')),
//      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OPTScreen()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.KPrimaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: Center(
                child: Text('KOTO',style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                ),),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35)
                  )
              ),
              child: Form(
                key:_formKey,
                child:Column(
                  children: [
                    SizedBox(height: 10),
                    Text('تسجل حساب جديد',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                hintText: 'الأسم الأول',
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800
                                )

                            ),
                            textAlign: TextAlign.right,
                            onSaved: (value){
                              firstName = value!;
                            },
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Please Enter Your name';
                              }else{
                                return null;
                              }
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                hintText: 'الأسم الأخير',
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800
                                )

                            ),
                            textAlign: TextAlign.right,
                            onSaved: (value){
                              email = value!;
                            },
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Please Enter Your Email';
                              }else{
                                return null;
                              }
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            keyboardType:TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                hintText: 'رقم التليفون',
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800
                                )

                            ),
                            textAlign: TextAlign.right,
                            onSaved: (value){
                              email = value!;
                            },
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Please Enter Your Email';
                              }else{
                                return null;
                              }
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                hintText: 'البريد الإلكتروني',
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800
                                )

                            ),
                            textAlign: TextAlign.right,
                            onSaved: (value){
                              email = value!;
                            },
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Please Enter Your Email';
                              }else{
                                return null;
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColor.KPrimaryColor,
                        ),
                        child: FlatButton(onPressed: (){
                          onClick();
                        }, child: Text('تسجيل حساب جديد',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),))),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Text('تسجيل دخول',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: MyColor.KPrimaryColor,
                            fontSize: 15
                          ),),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (contxet)=>Login()));
                          },
                        ),
                        SizedBox(width: 10,),
                        Text('لدي حساب بالفعل',
                          style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      ],
                    )
                  ],
                ) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}