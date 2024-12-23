import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// File for otp

class SecondRoute extends StatelessWidget {
  String? Num;
  SecondRoute({required this.Num});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
        SingleChildScrollView(
        child: ConstrainedBox(
        constraints: BoxConstraints(),
    child:Column(

          // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/Hero.png",
                      scale:0.01,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(20,90,0,20),
                      child: Text(
                        'Welcome To MeraForm',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            // fontStyle: FontStyle.Raleway,
                            fontFamily:'Raleway',
                            fontSize: 27.0),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(24,130,0,20),
                      child: Text(
                        "We're thrilled to see you again!",
                        style: TextStyle(color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            // fontStyle: FontStyle.Raleway,
                            fontFamily:'Poppins',
                            fontSize: 12.0),
                      )),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,220,0,0),
                    height: 650,
                    width: 1000,


                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      color: Colors.white,

                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(15,240,15,20),
                    child: Text(
                      "Enter your registered mobile number to receive a One-Time Password (OTP) for secure login.",
                      style: TextStyle(color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          // fontStyle: FontStyle.Raleway,
                          fontFamily:'Poppins',
                          fontSize: 12.0),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(15,310,0,20),
                    child: Text(
                      "Mobile Number",
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                          // fontStyle: FontStyle.Raleway,
                          fontFamily:'Poppins',
                          fontSize: 15.0),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(340,300,0,20),
                    child:TextButton(
                      child: Text(
                        "Edit",
                        style: TextStyle(fontSize: 13),
                      ),
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20,430,0,20),
                    child: Text(
                      "Enter the 6-digit OTP",
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.w400,
                          // fontStyle: FontStyle.Raleway,
                          fontFamily:'Poppins',
                          fontSize: 12.0),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(15,350,15,20),
                    child: TextFormField(
                      // validator: (value){
                      //   if(value == null || value.length>=10){
                      //     return 'enter valid number';
                      //   }
                      // },
                      readOnly: true,
                      controller: TextEditingController(text: Num),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          child: Image(image: AssetImage('assets/Flag.png')),
                        ),

                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(15,470,15,20),
                    child:OtpTextField(
                      numberOfFields: 5,
                      borderColor: Colors.black,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content: Text('Code entered is $verificationCode'),
                              );
                            }
                        );
                      }, // end onSubmit
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20,540,0,20),
                    child: Text(
                      "Didn't receive an OTP ? Resend OTP",
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.w400,
                          // fontStyle: FontStyle.Raleway,
                          fontFamily:'Poppins',
                          fontSize: 12.0),
                    ),
                  ),
                  Container(
                    width:370,
                    margin: const EdgeInsets.fromLTRB(20,800,0,25),
                    child: TextButton(onPressed: (){

                    }, child:
                    Text('Verify and continue',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                    color: Colors.lightGreenAccent[100],
                  ),


                ],
              ),
            ]
        )
        )
        )
    );
  }
}