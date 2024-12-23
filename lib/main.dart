import 'dart:ffi';

import 'package:ex3flutter/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ex3flutter/SecondRoute.dart';
import 'package:ex3flutter/SignUpPage.dart';
import 'package:ex3flutter/Details.dart';
import 'package:ex3flutter/Dashboard.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final _formKey = GlobalKey<FormState>();
  String? PhoneNo;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body:
      SingleChildScrollView(
        child: ConstrainedBox(
        constraints: BoxConstraints(),
    child:Form(
        key: _formKey,
        child: Column(

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
                  margin: const EdgeInsets.fromLTRB(80,430,0,0),
                  child: TextButton(
                    child: Text(
                      "Don't have an account yet?  Sign Up",
                      style: TextStyle(fontSize: 13),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  SignUpPage()));
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.blue,
                        ),
                  ),

                ),

                Container(
                  margin: const EdgeInsets.fromLTRB(15,350,15,20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        child: Image(image: AssetImage('assets/Flag.png')),
                      ),

                    ),
                    validator: (value){
                      if(value == null || value.length!=10){
                        return 'enter valid number';
                      }
                      else{
                        return null;
                      }
                    },
                      onChanged: (value) {
                        setState(() {
                          PhoneNo = value!;
                        });
                      }
                  ),
                ),
                Container(
                  width:370,
                  margin: const EdgeInsets.fromLTRB(20,800,0,25),
                  child: TextButton(onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  SecondRoute(Num: PhoneNo,)));
                  }}
                      ,
                      child:
                      Text('Proceed Ahead',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                  color: Colors.lightGreenAccent[100],
                ),


              ],
            ),
          ]
      ),
    )
    )
      )
    );// This trailing comma makes auto-formatting nicer for build methods.

  }
}





