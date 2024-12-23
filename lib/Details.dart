import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ex3flutter/Dashboard.dart';

// Details page

class Details  extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}



class _DetailsState extends State<Details> {
  final _formKey = GlobalKey<FormState>();
  String dropdownvalue='Select State';
  var items =['Select State','Gujarat', 'Maharastra','Chennai'];
  bool? isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Scaffold(
            appBar: AppBar(),
            body:SingleChildScrollView(
                child: ConstrainedBox(
                    constraints: BoxConstraints(),
                    child: Column(

                      // mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Stack(
                              children: <Widget>[
                                Container(
                                    margin: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                                    child: Text(
                                      'Add Address',
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily: 'Raleway',
                                          fontSize: 20.0),
                                    )

                                ),
                                Container(
                                    margin: const EdgeInsets.fromLTRB(20,45, 0, 20),
                                    child: Text(
                                      'Please enter the details of your current address.',
                                      style: TextStyle(color: Colors.black,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily: 'Poppins',
                                          fontSize: 12.0),
                                    )

                                ),
                                Container(
                                    color:Colors.blue[100],
                                    width: 350,
                                    margin: const EdgeInsets.fromLTRB(20,77, 0, 20),
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: Text(
                                      '  Work Address *',
                                      style: TextStyle(color: Colors.black,
                                        // fontStyle: FontStyle.Raleway,
                                        fontFamily: 'Raleway',
                                        fontSize: 17.0,),
                                    )

                                ),
                                Container(
                                    margin: const EdgeInsets.fromLTRB(25,120,0,20),
                                    child: Text(
                                      'Address Line 1*',
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily:'Poppins',
                                          fontSize: 12.0),
                                    )

                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(25,150,35,20),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Address',
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
                                    margin: const EdgeInsets.fromLTRB(25,220,0,20),
                                    child: Text(
                                      'Address Line 2*',
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily:'Poppins',
                                          fontSize: 12.0),
                                    )

                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(25,250,35,20),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Address',
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
                                    margin: const EdgeInsets.fromLTRB(25,320,0,20),
                                    child: Text(
                                      'State',
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily:'Poppins',
                                          fontSize: 12.0),
                                    )

                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(25,350,41,20),
                                  child:  DropdownButtonFormField(
                                    isExpanded: true,
                                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),

                                    // Initial Value
                                    value: dropdownvalue,

                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.fromLTRB(25,420,0,20),
                                    child: Text(
                                      'City',
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily:'Poppins',
                                          fontSize: 12.0),
                                    )

                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(25,450,41,20),
                                  child:  DropdownButtonFormField(
                                    isExpanded: true,
                                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),

                                    // Initial Value
                                    value: dropdownvalue,

                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.fromLTRB(25,520,0,20),
                                    child: Text(
                                      'Pin code',
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily:'Poppins',
                                          fontSize: 12.0),
                                    )

                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(25,550,35,20),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Pin code',
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
                                    color:Colors.blue[100],
                                    width: 350,
                                    margin: const EdgeInsets.fromLTRB(20,620, 0, 20),
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: Text(
                                      '  Home Address *',
                                      style: TextStyle(color: Colors.black,
                                        // fontStyle: FontStyle.Raleway,
                                        fontFamily: 'Raleway',
                                        fontSize: 17.0,),
                                    )

                                ),
                                Container(
                                    margin: const EdgeInsets.fromLTRB(25,665,0,20),
                                    child: Text(
                                      'Address Line 1*',
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily:'Poppins',
                                          fontSize: 12.0),
                                    )

                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(25,695,35,20),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Address',
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
                                    margin: const EdgeInsets.fromLTRB(25,765,0,20),
                                    child: Text(
                                      'Address Line 2*',
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily:'Poppins',
                                          fontSize: 12.0),
                                    )

                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(25,795,35,20),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Address',
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
                                    margin: const EdgeInsets.fromLTRB(25,865,0,20),
                                    child: Text(
                                      'State',
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily:'Poppins',
                                          fontSize: 12.0),
                                    )

                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(25,890,41,20),
                                  child:  DropdownButtonFormField(
                                    isExpanded: true,
                                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),

                                    // Initial Value
                                    value: dropdownvalue,

                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.fromLTRB(25,950,41,20),
                                    child: Text(
                                      'City',
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily:'Poppins',
                                          fontSize: 12.0),
                                    )

                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(25,980,41,20),
                                  child:  DropdownButtonFormField(
                                    isExpanded: true,
                                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),

                                    // Initial Value
                                    value: dropdownvalue,


                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.fromLTRB(25,1040,0,20),
                                    child: Text(
                                      'Pin code',
                                      style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          // fontStyle: FontStyle.Raleway,
                                          fontFamily:'Poppins',
                                          fontSize: 12.0),
                                    )

                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(25,1070,35,20),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Pin code',
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
                                    padding: const EdgeInsets.fromLTRB(15,1120,25,0),
                                    child:Row(
                                        children: [
                                          Checkbox(

                                            value: isSelected,

                                            onChanged: (value) {


                                              setState(() {
                                                isSelected = value;
                                              });
                                            },

                                          ),Text('By clicking, I agree to the Privacy Policy & Terms & Condition.',
                                            style: TextStyle(color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                // fontStyle: FontStyle.Raleway,
                                                fontFamily:'Poppins',
                                                fontSize: 10.0),)
                                        ]
                                    )
                                ),
                                Container(
                                  width:370,
                                  margin: const EdgeInsets.fromLTRB(20,1175,0,25),
                                  child: TextButton(onPressed: (){
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>  Dashboard()));
                                    }}
                                      ,
                                      child:
                                      Text('Save Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                                  color: Colors.lightGreenAccent[100],
                                ),


                              ]
                          )
                        ]
                    )
                )
            )));
  }
}