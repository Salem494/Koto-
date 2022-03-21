import 'package:flutter/material.dart';
import 'package:toko/Constant/color.dart';
import 'package:toko/Screens/opt_screen.dart';
import 'package:toko/Screens/register.dart';

import 'main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  late String email,password;
  bool _secureShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Color(0xfff6b18ff),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                color: Color(0xfff6b18ff),
                child: Center(
                  child: Text('KOTO',style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
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
                      Text('تسجل الدخول',
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
                                    hintText: 'البريد الإلكتروني',
                                  suffixIcon: Icon(Icons.email),
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
                            if(_formKey.currentState!.validate()){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Main()));
                            }
                          }, child: Text('سجل الدخول ',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),))),
                      SizedBox(height: 25,),
                      Text('-أو سجل عن طريق-',style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                      ),),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey,width: 1.0)
                            ),
                            child: Image.asset('assets/facebook.png',
                                fit: BoxFit.cover),
                            width: 60,
                            height:60,
                          ),
                          Container(
                            child: Image.asset('assets/google.png',
                                fit: BoxFit.cover),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey,width: 1.0)
                            ),
                            width: 60,
                            height:60,
                          ),
                          Container(
                            child: Center(child: Image.asset('assets/apple.png',
                                fit: BoxFit.cover)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey,width: 1.0)
                            ),
                            width: 60,
                            height:60,
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Text('سجل الأن',style: TextStyle(
                              color: MyColor.KPrimaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                            },
                          ),
                          SizedBox(width: 10,),
                          Text('ليس لديك حساب؟',style: TextStyle(
                            fontSize:15,
                            fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                      SizedBox(height: 20),
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
