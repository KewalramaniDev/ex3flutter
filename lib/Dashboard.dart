import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ex3flutter/Services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  final _formKey = GlobalKey<FormState>();
  String dropdownvalue='Month';
  var items =['Month','Jan', 'Feb','Mar'];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Form(
        key: _formKey,
        child: Scaffold(
        appBar: AppBar(
           title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          const Text("Welcome, Rohan",style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily:'Raleway',
              fontSize: 18.0),),
            Row(
                children: <Widget>[
                Icon(Icons.location_pin,size: 15,),
          const Text("Ahmedabad",
            style: TextStyle(color: Colors.black,
                fontFamily:'Poppins',
                fontSize: 12.0),),
                  Icon(Icons.keyboard_arrow_down,size: 15,),
          ]
            ),
          ]),
          leading: IconButton(
          icon: Image(image: AssetImage('assets/Menu.png')),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
          actions: <Widget>[
        Container(

          child:
            IconButton(
              icon: Image(image: AssetImage('assets/Notification.png')),
              onPressed: () {
                // do something
              },
            )
        )
          ],
        ),
    body:SingleChildScrollView(
    child: ConstrainedBox(
    constraints: BoxConstraints(),
    child: Column(

    // mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
    Stack(
    children: <Widget>[
    Container(
    margin: const EdgeInsets.fromLTRB(20, 25, 20, 20),
        alignment: Alignment.center,
        child: Image.asset(
          "assets/Gradient.png",
          scale:0.01,
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(40, 45, 20, 20),
        child:  Text("₹ 1,500",style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily:'Poppins',
            fontSize: 25.0),),

      ),
      Container(
        margin: const EdgeInsets.fromLTRB(40, 85, 20, 20),
        child:  Text("Total Earning",style: TextStyle(color: Colors.black,
            fontFamily:'Poppins',
            fontSize: 13.0),),

      ),
      Container(
        margin: const EdgeInsets.fromLTRB(240, 45, 35, 20),
        color: Colors.white,
        child:DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),



          ),
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
        margin: const EdgeInsets.fromLTRB(250, 110, 35, 20),
        child: Image.asset(
          "assets/Arrow.png",
        ),

      ),
      Container(
        margin: const EdgeInsets.fromLTRB(265, 105, 35, 20),
          child: Text(
            '-4%',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontFamily:'Poppins',
                fontSize: 12.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(290, 105, 35, 20),
          child: Text(
            '(₹ 60)',
            style: TextStyle(color: Colors.grey,
                // fontStyle: FontStyle.Raleway,
                fontFamily:'Poppins',
                fontSize: 12.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,135,20,0),
          child: DottedLine(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            lineLength: double.infinity,
            lineThickness: 1.0,
            dashLength: 4.0,
            dashColor: Colors.black,
            dashRadius: 0.0,
            dashGapLength: 4.0,
            dashGapColor: Colors.transparent,
            dashGapRadius: 0.0,
          )
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(40,150,20,0),
        color: Colors.white,
        height: 75,
        width: 90,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(155,150,20,0),
        color: Colors.white,
        height: 75,
        width: 90,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(270,150,20,0),
        color: Colors.white,
        height: 75,
        width: 90,
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(50,205, 35, 20),
          child: Text(
            'Total Order',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontFamily:'Poppins',
                fontSize: 11.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(170,205, 35, 20),
          child: Text(
            'New Order',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontFamily:'Poppins',
                fontSize: 11.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(275,205, 35, 20),
          child: Text(
            'Current Order',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontFamily:'Poppins',
                fontSize: 11.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(50,155, 35, 20),
          child: Text(
            '25',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w700,
                fontFamily:'Poppins',
                fontSize: 21.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(165,155, 35, 20),
          child: Text(
            '05',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w700,
                fontFamily:'Poppins',
                fontSize: 21.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(275,155, 35, 20),
          child: Text(
            '20',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w700,
                fontFamily:'Poppins',
                fontSize: 21.0),
          )

      ),
      Container(
        margin: const EdgeInsets.fromLTRB(100,165, 35, 20),
        child: Image.asset(
        "assets/Cart.png",
      ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(220,165, 35, 20),
        child: Image.asset(
          "assets/New.png",
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(330,165, 35, 20),
        child: Image.asset(
          "assets/Current.png",
        ),
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,255, 35, 20),
          child: Text(
            'Recent Orders',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.bold,
                fontFamily:'Raleway',
                fontSize: 16.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(340,260,0, 20),
          child: Text(
            'See all',
            style: TextStyle(color: Colors.grey,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w400,
                fontFamily:'Poppins',
                fontSize: 11.0),
          )

      ),
      Container(
        margin: const EdgeInsets.fromLTRB(20,290,0, 20),
        height:240,
        width:360,

        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color:Colors.grey[100],
            borderRadius: BorderRadius.circular(10)
        ),
      ),
      Container(
          width:170,
          color: Colors.lightGreenAccent.shade100,
          margin:  const EdgeInsets.fromLTRB(30,300,0,0),
          child: TextButton(
            onPressed: () {
            },
            child: const Text(
              'New Order',
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.black,
                
                fontSize: 13,
              ),
            ),
          )
      ),
      Container(
          width:169,
          color: Colors.white,
          margin:  const EdgeInsets.fromLTRB(200,300,20,0),
          child: TextButton(
            onPressed: () {
            },
            child: const Text(
              'Current Orders',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
          )
      ),
      // Container(
      //   margin: const EdgeInsets.fromLTRB(40,360,0, 20),
      //   height:144,
      //   width:315,
      //
      //   decoration: BoxDecoration(
      //       shape: BoxShape.rectangle,
      //       color:Colors.white,
      //       borderRadius: BorderRadius.circular(10)
      //   ),
      //
      // ),
      // Container(
      //   margin: const EdgeInsets.fromLTRB(60,380,0, 20),
      //   padding: const EdgeInsets.all(5),
      //   color: Colors.blue[50],
      //   child: Image.asset(
      //     "assets/Cap.png",
      //   ),
      //
      // ),
      // Container(
      //     margin: const EdgeInsets.fromLTRB(120,380, 0, 20),
      //     child: Text(
      //       'Digital Education Initiatives',
      //       style: TextStyle(color: Colors.black,
      //           // fontStyle: FontStyle.Raleway,
      //           fontWeight: FontWeight.w700,
      //           fontFamily:'Poppins',
      //           fontSize: 13.0),
      //     )
      //
      // ),
      // Container(
      //   margin: const EdgeInsets.fromLTRB(120,400,0, 20),
      //   padding: const EdgeInsets.all(5),
      //   child: Image.asset(
      //     "assets/Calendar.png",
      //   ),
      //
      // ),
      // Container(
      //     margin: const EdgeInsets.fromLTRB(140,402, 0, 20),
      //     child: Text(
      //       '12 August 2024',
      //       style: TextStyle(color: Colors.black,
      //           // fontStyle: FontStyle.Raleway,
      //           // fontWeight: FontWeight.w700,
      //           fontFamily:'Poppins',
      //           fontSize: 11.0),
      //     )
      //
      // ),
      // Container(
      //     margin: const EdgeInsets.fromLTRB(40,430,50,0),
      //     child: DottedLine(
      //       direction: Axis.horizontal,
      //       alignment: WrapAlignment.center,
      //       lineLength: double.infinity,
      //       lineThickness: 1.0,
      //       dashLength: 4.0,
      //       dashColor: Colors.black,
      //       dashRadius: 0.0,
      //       dashGapLength: 4.0,
      //       dashGapColor: Colors.transparent,
      //       dashGapRadius: 0.0,
      //     )
      // ),
      // Container(
      //     margin: const EdgeInsets.fromLTRB(60,450, 0, 20),
      //     child: Text(
      //       'Rohit Sharma',
      //       style: TextStyle(color: Colors.black,
      //           // fontStyle: FontStyle.Raleway,
      //           fontWeight: FontWeight.w700,
      //           fontFamily:'Poppins',
      //           fontSize: 13.0),
      //     )
      //
      // ),
      // Container(
      //     margin: const EdgeInsets.fromLTRB(60,470, 0, 20),
      //     child: Text(
      //       '₹ 528',
      //       style: TextStyle(color: Colors.black,
      //           // fontStyle: FontStyle.Raleway,
      //           fontWeight: FontWeight.w700,
      //           fontFamily:'Poppins',
      //           fontSize: 13.0),
      //     )
      //
      // ),
      // Container(
      //   margin: const EdgeInsets.fromLTRB(190,445,0,0),
      //   height: 40,
      //
      //   color: Colors.green[50],
      //   child: TextButton(
      //     child: Text(
      //       "  Approve",
      //       style: TextStyle(fontSize: 11),
      //     ),
      //     onPressed: () {
      //     },
      //
      //   ),
      //
      // ),
      // Container(
      //   margin: const EdgeInsets.fromLTRB(275,445,0,0),
      //   height: 40,
      //
      //   color: Colors.red[50],
      //   child: TextButton(
      //     child: Text(
      //       "  Reject",
      //       style: TextStyle(fontSize: 11),
      //     ),
      //     onPressed: () {
      //     },
      //
      //   ),
      //
      // ),
      //
      // Container(
      //   margin: const EdgeInsets.fromLTRB(192,457,0, 20),
      //   padding: const EdgeInsets.all(5),
      //   child: Image.asset(
      //     "assets/Tick.png",
      //   ),
      //
      // ),
      // Container(
      //   margin: const EdgeInsets.fromLTRB(279,456,0, 20),
      //   padding: const EdgeInsets.all(5),
      //   child: Image.asset(
      //     "assets/Cross.png",
      //   ),
      //
      // ),
      Container(
          height:140,


          margin: const EdgeInsets.fromLTRB(0,360,0,0),
          child:CarouselSlider(
            items: [
              Container(
                padding: EdgeInsets.fromLTRB(15,16,25,10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/Cap.png",
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Digital Education Initiatives",
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/Calendar.png",
                                  height: 20,
                                  width: 20,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "12 August 2024",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 1,
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rohit Sharma",
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "₹ 528",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            // Approve Button
                            Container(
                              height: 30,
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.green.shade50,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/Tick.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "Approve",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            // Reject Button
                            Container(
                              height: 30,
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/Cross.png",
                                    height: 20,
                                    width: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "Reject",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            options: CarouselOptions(
              height: 200,
              autoPlay: false,
              enlargeCenterPage: true,
            ),
          )),
      Container(
          margin: const EdgeInsets.fromLTRB(20,550, 35, 20),
          child: Text(
            'Services Overview',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.bold,
                fontFamily:'Raleway',
                fontSize: 16.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(340,556,0, 20),
          child: Text(
            'See all',
            style: TextStyle(color: Colors.grey,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w400,
                fontFamily:'Poppins',
                fontSize: 11.0),
          )

      ),
      Container(
        margin: const EdgeInsets.fromLTRB(40,590,0, 20),
        height: 102,
        width:325,
        color:Colors.blue[50],
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(50,600, 35, 20),
          child: Text(
            'Pradhan Mantri Jan Dhan Yojana',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w700,
                fontFamily:'Poppins',
                fontSize: 13.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(50,620, 35, 20),
          child: Text(
            'Category : Education',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                // fontWeight: FontWeight.w700,
                fontFamily:'Poppins',
                fontSize: 11.0),
          )

      ),
      Container(
          color: Colors.yellow.shade50,
          margin: const EdgeInsets.fromLTRB(20,720,0,0),
          width: 185,
          child: TextButton(onPressed: (){},
              child: Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(0,5,0,0),
                      child: Text("Add New",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, fontFamily: "Raleway", color: Colors.black),)
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(125,0,0,0),
                      child: Image.asset("assets/Gplus.png")
                  )
                ],
              ))
      ),
      Container(
          color: Colors.blue[50],
          margin: const EdgeInsets.fromLTRB(215,720,20,0),
          width: 205,
          child: TextButton(onPressed: (){},
              child: Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(0,5,0,0),
                      child: Text("Add New",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, fontFamily: "Raleway", color: Colors.black),)
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(115,0,0,0),
                      child: Image.asset("assets/Bplus.png")
                  )
                ],
              ))
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(25,790,0,0),
          width:180,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[50]
          ),
          child:Stack(children:[
            Container(
              margin: const EdgeInsets.fromLTRB(20,30,10,0),
              child:  Text('26',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Poppins'),),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20,70,10,0),
              child:  Text('Service Application',style: TextStyle(fontSize: 13,fontFamily: 'Poppins',color: Colors.black),),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20,100,20,0),
                child: DottedLine(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  lineLength: 200,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.black,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                )
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5,110,10,0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Colors.green
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    child:  Text('20 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    child:  Text('Approved ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                  ),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5,130,10,0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Colors.orange
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    child:  Text('04 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    child:  Text('In Review ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                  ),
                ],
              ),
            ),
        Container(
            margin: const EdgeInsets.fromLTRB(5,150,10,0),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10,10,0,0),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10,10,0,0),
                  child:  Text('01 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10,10,0,0),
                  child:  Text(' Rejected ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                ),

              ],
            ),
        ),




            ])
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(225,790,10,0),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[50]
          ),
          child:Stack(children:[
            Container(
              margin: const EdgeInsets.fromLTRB(20,30,10,0),
              child:  Text('30',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Poppins'),),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20,70,10,0),
              child:  Text('Enrolled Services',style: TextStyle(fontSize: 13,fontFamily: 'Poppins',color: Colors.black),),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20,100,20,0),
                child: DottedLine(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  lineLength: 200,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Colors.black,
                  dashRadius: 0.0,
                  dashGapLength: 4.0,
                  dashGapColor: Colors.transparent,
                  dashGapRadius: 0.0,
                )
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5,110,10,0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Colors.green
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    child:  Text('25 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    child:  Text('Approved ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                  ),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5,130,10,0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Colors.orange
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    child:  Text('02 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    child:  Text('In Review ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5,150,10,0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                        color: Colors.red
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    child:  Text('01 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10,10,0,0),
                    child:  Text(' Rejected ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 17,fontFamily: 'Poppins',color: Colors.black),),
                  ),

                ],
              ),
            ),






          ])
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0,1010,00,0),
        height: 350,
        color: Colors.blue[50],
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,1030, 35, 20),
          child: Text(
            'Frequently Asked Question',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.bold,
                fontFamily:'Raleway',
                fontSize: 16.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(340,1036,0, 20),
          child: Text(
            'See all',
            style: TextStyle(color: Colors.grey,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w400,
                fontFamily:'Poppins',
                fontSize: 11.0),
          )

      ),


      Container(
        margin: const EdgeInsets.fromLTRB(20,1280,20, 20),
        color: Colors.white,
        child:const ExpansionTile(
          title: Text(
            'What should I do if I am not satisfied with the service provided?',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontFamily:'Poppins',
                fontSize: 13.0),
          ),
          children: <Widget>[
            ListTile(title: Text('This is tile number 1')),
          ],
        ),

      ),
      Container(
        margin: const EdgeInsets.fromLTRB(20,1210,20, 20),
        color: Colors.white,
        child:const ExpansionTile(
          title: Text(
            'How can I pay for the services booked through MeraForm?',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontFamily:'Poppins',
                fontSize: 13.0),
          ),
          children: <Widget>[
            ListTile(title: Text('This is tile number 1')),
          ],
        ),

      ),
      Container(
        margin: const EdgeInsets.fromLTRB(20,1140,20, 20),
        color: Colors.white,
        child:const ExpansionTile(
          title: Text(
            'Are the service providers on MeraForm verified?',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontFamily:'Poppins',
                fontSize: 13.0),
          ),
          children: <Widget>[
            ListTile(title: Text('This is tile number 1')),
          ],
        ),

      ),
      Container(
        margin: const EdgeInsets.fromLTRB(20,1070,20, 20),
        color: Colors.white,
        child:const ExpansionTile(
          title: Text(
            'How do I book a service on MeraForm?',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontFamily:'Poppins',
                fontSize: 13.0),
          ),
          children: <Widget>[
            ListTile(title: Text('This is tile number 1')),
          ],
        ),

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,1400, 35, 20),
          child: Text(
            'Contact Support',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.bold,
                fontFamily:'Raleway',
                fontSize: 16.0),
          )

      ),

      Container(
          margin: const EdgeInsets.fromLTRB(20,1440,0,0),
          child: Image.asset("assets/Call.png")
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(60,1445, 35, 20),
          child: Text(
            '+91 9568526745',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,

                fontFamily:'Poppins',
                fontSize: 13.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,1480,0,0),
          child: Image.asset("assets/Email.png")
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(60,1485, 35, 20),
          child: Text(
            'Support@meraform.com',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,

                fontFamily:'Poppins',
                fontSize: 13.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,1465,20,0),
          child: Divider()
      ),


      Container(
          margin: const EdgeInsets.fromLTRB(140,1550,140,0),
          child: Divider()
      ),




    ]
    )
    ]
    ),

    )
    ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          child:Image(image: AssetImage('assets/Home.png'))),
                label: 'Home',
              ),
              BottomNavigationBarItem(
              icon: Container(
                  // padding: EdgeInsets.symmetric(vertical: 5),
              child:IconButton(onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context) =>  Services()));
              },icon: Image(image: AssetImage('assets/Service.png')) )),
              label: 'Services',
              ),
              BottomNavigationBarItem(
                icon:Container(
              padding: EdgeInsets.symmetric(vertical: 5),
    child: Image(image: AssetImage('assets/Order.png'))),
                label: 'Order',
              ),
              BottomNavigationBarItem(
                icon: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
    child:Image(image: AssetImage('assets/Profile.png'))),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.black,
          ),

    )
    );


  }
}
