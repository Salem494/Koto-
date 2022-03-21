import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toko/Screens/on_boarding.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // ignore: use_function_type_syntax_for_parameters

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 10),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoarding()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child:const Center(
          child:  Text('KOTO',style: TextStyle(
              fontSize: 50,
              color: Colors.black,
              fontWeight: FontWeight.w800
          ),),
        ),
      ),
    );
  }
}
