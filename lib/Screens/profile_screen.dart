import 'package:flutter/material.dart';
import 'package:toko/Constant/background.dart';
import 'package:toko/Screens/changePassword.dart';
import 'package:toko/Screens/change_profile.dart';
import 'package:toko/Screens/how_income_koto.dart';
import 'package:toko/Screens/premision_screen.dart';

import 'about_Koto.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Background(
       child: Column(
         children: [
           SizedBox(
             height: 150,
           ),
           SizedBox(
             height: 200,
             width: 200,
             child: Stack(
               fit: StackFit.expand,
               clipBehavior: Clip.none,
               children: [
                 CircleAvatar(
                   backgroundImage: AssetImage("assets/person.png"),
                 ),
                 Positioned(
                   right: 5,
                   bottom: 0,
                   child: SizedBox(
                     height: 46,
                     width: 46,
                     child: TextButton(
                       style: TextButton.styleFrom(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(50),
                           side: BorderSide(color: Colors.white),
                         ),
                         primary: Colors.white,
                         backgroundColor: Color(0xFFF5F6F9),
                       ),
                       onPressed: () {},
                       child: Icon(Icons.camera_alt,color: Colors.grey,size: 22,),
                     ),
                   ),
                 )
               ],
             ),
           ),
           SizedBox(
             height: 10,
           ),
           Text('سالم الحلو',style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 18
           ),),
           Text('SalemElHew@gmail.com'),
           SizedBox(height: 15,),
           BuildListTile(
             'تعديل الملف الشخصي',
               Icons.edit,
               (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeProfileScreen()));
               }
           ),
           Divider(color: Colors.black12,),
           BuildListTile(
               'تغيير كلمة السر',
               Icons.password,
                   (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
                   }
           ),
           Divider(color: Colors.black12,),
           BuildListTile(
               'استبدال النقط بهدايا',
               Icons.present_to_all,
                   (){}
           ),
           Divider(color: Colors.black12,),
           BuildListTile(
               'مخططات الدخل',
               Icons.settings_input_component_outlined,
                   (){}
           ),
           Divider(color: Colors.black12,),
           BuildListTile(
               'عن تطبيق كوتو',
               Icons.menu_book,
                   (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutKoto()));
                   }
           ),
           Divider(color: Colors.black12,),
           BuildListTile(
               'كيفيه الربح من كوتو',
               Icons.request_page,
                   (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>HowIncomeFromKoto()));
                   }
           ),
           Divider(color: Colors.black12,),
           BuildListTile(
               'الشروط والأحكام',
               Icons.wallpaper,
                   (){
                 Navigator.push(context, MaterialPageRoute(
                   builder: (context)=>Premision(),
                 ));
                   }
           ),
           Divider(color: Colors.black12,),
           BuildListTile(
               'تسجيل الخروج',
               Icons.logout,
                   (){}
           ),
           Divider(color: Colors.black12,),

         ],
       ),
     )
    );
  }
  Widget BuildListTile(String title,IconData icon,GestureTapCallback  onTap)
  {
    return ListTile(
      leading: Icon(Icons.arrow_back_ios,size: 22,),
      onTap: onTap,
      title: Text(title,
        textAlign: TextAlign.right,
        style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold
      ),),
      trailing: Icon(icon,size: 25,),
    );

  }
}
