import 'package:flutter/material.dart';
import 'package:toko/Constant/color.dart';
import 'package:toko/Screens/Invetion_screen.dart';
import 'package:toko/Screens/home_screen.dart';
import 'package:toko/Screens/profile_screen.dart';
import 'package:toko/Screens/wallet_screen.dart';

class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex= 3;
  final tab = [
    ProfileScreen(),
    WalletScreen(),
    InvetionScreen(),
    HomeScreen(),
     ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tab[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
//      backgroundColor: Colors.amber,
        elevation: 0.0,
        iconSize: 35,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(
          backgroundColor: MyColor.KPrimaryColor,
          icon: Icon(Icons.person),
          title: Text('الشخصية'),
        ),
        BottomNavigationBarItem(
          backgroundColor:MyColor.KPrimaryColor,
          icon: Icon(Icons.wallet_giftcard),
          title: Text('المحفظة'),
        ),
        BottomNavigationBarItem(
          backgroundColor: MyColor.KPrimaryColor,
          icon: Icon(Icons.inventory),
          title: Text('دعوة'),
        ),
        BottomNavigationBarItem(
          backgroundColor: MyColor.KPrimaryColor,
          icon: Icon(Icons.home),
          title: Text('الرئيسية'),
        ),
          ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
