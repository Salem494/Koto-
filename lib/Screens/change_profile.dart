import 'package:flutter/material.dart';
import 'package:toko/Constant/color.dart';

class ChangeProfileScreen extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  late String email,firstName,lastName,phone;
  bool _secureShow = true;

  onClick(){
    if(_formKey.currentState!.validate()){
//      ScaffoldMessenger.of(context).showSnackBar(
//        const SnackBar(content: Text('Done')),
//      );
//      Navigator.push(context, MaterialPageRoute(builder: (context)=>OPTScreen()));
//    Scaffold.of(context).showSnackBar();
    }
  }




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
        backgroundColor:  MyColor.KPrimaryColor,
        title: Text('تغيير ملفك الشخصي',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white
          ),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/person.png"),
                  ),
                  Positioned(
                    right: -16,
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
            Form(
              key:_formKey,
              child:Column(
                children: [
                  SizedBox(height: 10),
//                Text('تسجل حساب جديد',
//                  style: TextStyle(
//                    fontSize: 25,
//                    fontWeight: FontWeight.w700,
//                  ),
//                ),
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
                  InkWell(
                    onTap:onClick,
                    child: Container(
                      child: Center(child: Text('حفظ التغييرات',style: TextStyle(
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
      ),
    );
  }
}
