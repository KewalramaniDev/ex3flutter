import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ex3flutter/Details.dart';

// Registration Page

class SignUpPage extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child:Scaffold(
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
                            margin: const EdgeInsets.fromLTRB(20,60,0,20),
                            child: Text(
                              'Welcome!',
                              style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  // fontStyle: FontStyle.Raleway,
                                  fontFamily:'Raleway',
                                  fontSize: 27.0),
                            )

                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25,100,40,20),
                            child: Text(
                              'Its seems like you are new to MeraForm, Please fill out the details below to create your account and get started on your journey with us.',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black,
                                  // fontStyle: FontStyle.Raleway,
                                  fontFamily:'Poppins',
                                  fontSize: 12.0),
                            )

                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25,170,40,20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // First Name
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'First Name',
                                            style: TextStyle(fontWeight: FontWeight.w400,fontFamily:'Poppins',fontSize: 12.0),
                                          ),
                                          SizedBox(height: 8),
                                          TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Enter First Name',
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8.0),
                                              ),
                                              contentPadding:
                                              EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 16), // Spacing between First Name and Last Name

                                    // Last Name
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Last Name',
                                            style: TextStyle(fontWeight: FontWeight.w400,fontFamily:'Poppins',fontSize: 12.0),
                                          ),
                                          SizedBox(height: 8),
                                          TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Enter Last Name',
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(8.0),
                                              ),
                                              contentPadding:
                                              EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25,260,0,20),
                            child: Text(
                              'Mobile Number*',
                              style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  // fontStyle: FontStyle.Raleway,
                                  fontFamily:'Poppins',
                                  fontSize: 12.0),
                            )

                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(25,287,35,20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter Mobile Number',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              prefixIcon: Align(
                                widthFactor: 1.0,
                                child: Image(image: AssetImage('assets/Flag.png')),
                              ),

                            ),
                            validator: (value){
                              if(value == null || value.length!=10){
                                return 'enter valid Mobile Number';
                              }
                              else{
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25,360,0,20),
                            child: Text(
                              'Email Address',
                              style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  // fontStyle: FontStyle.Raleway,
                                  fontFamily:'Poppins',
                                  fontSize: 12.0),
                            )

                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(25,390,35,20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter Email Address',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),


                            ),
                            validator: (value){
                              if(value == null || value.length!=10){
                                return 'enter valid Email Address';
                              }
                              else{
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25,460,0,20),
                            child: Text(
                              'Aadhar Card Number*',
                              style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  // fontStyle: FontStyle.Raleway,
                                  fontFamily:'Poppins',
                                  fontSize: 12.0),
                            )

                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(25,490,35,20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Ex. 1234-5678-9014',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),


                            ),
                            validator: (value){
                              if(value == null || value.length!=14){
                                return 'enter valid Aadhar Card Number';
                              }
                              else{
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25,565,0,20),
                            child: Text(
                              'GST Number',
                              style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  // fontStyle: FontStyle.Raleway,
                                  fontFamily:'Poppins',
                                  fontSize: 12.0),
                            )

                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(25,598,35,20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Ex. 22AAAA0000A1Z5',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),


                            ),
                            validator: (value){
                              if(value == null || value.length!=15){
                                return 'enter valid GST Number';
                              }
                              else{
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          width:370,
                          margin: const EdgeInsets.fromLTRB(20,800,0,25),
                          child: TextButton(onPressed: (){
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  Details()));
                            }}
                              ,
                              child:
                              Text('Proceed Ahead',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                          color: Colors.lightGreenAccent[100],
                        ),


                      ]),
                ]
            )
        )
    )
        )
    );
  }
}