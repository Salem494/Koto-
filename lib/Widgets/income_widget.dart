import 'package:flutter/material.dart';

class HaveIncome extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final GestureTapCallback onClick;

  HaveIncome({
    required this.icon,
    required this.title,
    required this.color,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Card(
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
          width: MediaQuery.of(context).size.height * 0.5,
          child:Padding(
            padding: const EdgeInsets.only(right: 5,left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                Icon(icon,size: 50,
                color: Colors.deepPurple.shade400,
                ),
              ],
            ),
          ) ,
        ),
      ),
    );
  }
}
