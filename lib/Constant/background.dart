import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  @override
  const Background({required this.child,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xfff6b18ff),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
//                      borderRadius: BorderRadius.only(
//                        topRight: Radius.circular(50),
//                        topLeft: Radius.circular(50),
//                      )
                  ),
                ),
              ],
            ),
            child,
          ],
        ),
      ),
    );
  }
}