import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Services extends StatefulWidget {
  const Services ({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
    body:SingleChildScrollView(
    child: ConstrainedBox(
    constraints: BoxConstraints(),
    child: Column(

    // mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
    Stack(
    children: <Widget>[
      Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(194, 233, 106,210),
              Color.fromRGBO(104, 146, 255,210),
            ],
                begin: Alignment.topLeft)
        ),
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,75,20,0),
          child: Text("Services",style: TextStyle(fontSize: 25, fontFamily: "Poppins",fontWeight: FontWeight.w600, color: Colors.black),)
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(350,75,0,0),
          child:IconButton(onPressed: (){}, icon: Image(image: AssetImage("assets/Notification.png"),height: 30,))
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(20,150,20,10),

        alignment: Alignment.center,
        height:190,
        width:380,

        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color:Colors.grey[100],
            borderRadius: BorderRadius.circular(10)
        ),
      ),
      Container(
        margin:const EdgeInsets.fromLTRB(40, 170,0,0),
        child: Text("35",style:TextStyle(fontSize:25, fontWeight: FontWeight.w900,color: Colors.black, fontFamily: "Poppins")),
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(40,210,0,0),
          child: Text("My Services",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w100,fontFamily: "Poppins"),)
      ),
      Container(
        width: 110,
        margin: const EdgeInsets.fromLTRB(262,170,20,0),
        color:  Colors.lightGreenAccent.shade100,
        child: DropdownButtonFormField(
          hint: Text("Month",style: TextStyle(fontFamily: 'Poppins')),
          decoration: InputDecoration(border: OutlineInputBorder()),
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
          margin: const EdgeInsets.fromLTRB(40,250,40,0),
          child: DottedLine(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            lineLength: double.infinity,
            lineThickness: 1.0,
            dashLength: 4.0,
            dashColor: Colors.black,
          )
      ),

      Container(
          color: Colors.yellow.shade50,
          margin: const EdgeInsets.fromLTRB(40,270,0,0),
          width: 165,
          child: TextButton(onPressed: (){},
              child: Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(0,5,0,0),
                      child: Text("Add New",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, fontFamily: "Raleway", color: Colors.black),)
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(105,0,0,0),
                      child: Image.asset("assets/Gplus.png")
                  )
                ],
              ))
      ),
      Container(
          color: Colors.blue[50],
          margin: const EdgeInsets.fromLTRB(215,270,20,0),
          width: 165,
          child: TextButton(onPressed: (){},
              child: Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(0,5,0,0),
                      child: Text("Add New",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, fontFamily: "Raleway", color: Colors.black),)
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(105,0,0,0),
                      child: Image.asset("assets/Bplus.png")
                  )
                ],
              ))
      ),
      Container(
          color: Color.fromRGBO(242, 231, 235,70),
          margin: const EdgeInsets.fromLTRB(20,370,20,0),
          width: 380,
          child: TextButton(onPressed: (){},
              child: Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(0,5,0,0),
                      child: Image.asset("assets/Setting.png")
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(30,5,0,0),
                      child: Text("Check Your Service Application",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, fontFamily: "Raleway", color: Colors.black),)
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(320,2,0,0),
                      color: Colors.white,

                      height: 25,
                      padding: const EdgeInsets.all(5),
                      child: Image.asset("assets/ArrowOut.png")
                  )
                ],
              ))
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0,440,0,0),
        height: 650,
        width: 1000,


        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(20.0),
          color: Colors.white,

        ),
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,470, 35, 20),
          child: Text(
            'Set Your Top Services',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.bold,
                fontFamily:'Raleway',
                fontSize: 16.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,500, 35, 20),
          child: Text(
            'Make Your Best Services Easily Discoverable.',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontFamily:'Poppins',
                fontSize: 12.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(360,480,0,0),

          child: Image.asset("assets/Top.png")
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,820,20, 20),
          color: Colors.white,
          child:Stack(

              children: [
                Container(
                  color: Colors.grey[100],
                  child: ExpansionTile(

                    title: Text(
                      '      Select Service',
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
                    margin: const EdgeInsets.fromLTRB(10,14,0,0),
                    color: Colors.white,

                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: Text('5')
                ),
              ]
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,750,20, 20),
          color: Colors.white,
          child:Stack(

              children: [
                Container(
                  color: Colors.grey[100],
                  child: ExpansionTile(

                    title: Text(
                      '      Select Service',
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
                    margin: const EdgeInsets.fromLTRB(10,14,0,0),
                    color: Colors.white,

                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: Text('4')
                ),
              ]
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,680,20, 20),
          color: Colors.white,
          child:Stack(

              children: [
                Container(
                  color: Colors.grey[100],
                  child: ExpansionTile(

                    title: Text(
                      '      Swachh Bharat Mission (SBM)',
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
                    margin: const EdgeInsets.fromLTRB(10,14,0,0),
                    color: Colors.white,

                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: Text('3')
                ),
              ]
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,610,20, 20),
          color: Colors.white,
          child:Stack(

              children: [
                Container(
                  color: Colors.grey[100],
                  child: ExpansionTile(

                    title: Text(
                      '      Public Sector Undertakings',
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
                    margin: const EdgeInsets.fromLTRB(10,14,0,0),
                    color: Colors.white,

                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: Text('2')
                ),
              ]
          )

      ),
      Container(
        margin: const EdgeInsets.fromLTRB(20,540,20, 20),
        color: Colors.white,
        child:Stack(

          children: [
            Container(
              color: Colors.grey[100],
              child: ExpansionTile(

                title: Text(
                  '      Digital Education Initiatives',
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
              margin: const EdgeInsets.fromLTRB(10,14,0,0),
              color: Colors.white,

              height: 30,
              padding: const EdgeInsets.all(5),
              child: Text('1')
          ),
      ]
        )

      ),
      Container(
        margin: const EdgeInsets.fromLTRB(20,900,20,0),
        color: Colors.grey[100],
        height: 100,
        width: 110,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(20,1030,20,0),
        color: Colors.grey[100],
        height: 100,
        width: 110,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(150,900,20,0),
        color: Colors.grey[100],
        height: 100,
        width: 110,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(150,1030,20,0),
        color: Colors.grey[100],
        height: 100,
        width: 110,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(280,900,20,0),
        color: Colors.grey[100],
        height: 100,
        width: 110,
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(280,1030,20,0),
        color: Colors.grey[100],
        height: 100,
        width: 110,
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(40,970, 35, 20),
          child: Text(
            'Education',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w600,
                fontFamily:'Poppins',
                fontSize: 12.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(170,970, 35, 20),
          child: Text(
            'Jobs',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w600,
                fontFamily:'Poppins',
                fontSize: 12.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(300,970, 35, 20),
          child: Text(
            'Schemes',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w600,
                fontFamily:'Poppins',
                fontSize: 12.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(40,1100, 35, 20),
          child: Text(
            'Subsidies',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w600,
                fontFamily:'Poppins',
                fontSize: 12.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(167,1100, 35, 20),
          child: Text(
            'Scholarships',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w600,
                fontFamily:'Poppins',
                fontSize: 12.0),
          )

      ),
      Container(
          margin: const EdgeInsets.fromLTRB(298,1100, 35, 20),
          child: Text(
            'Government',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.w600,
                fontFamily:'Poppins',
                fontSize: 12.0),
          )

      ),

      Container(
          margin: const EdgeInsets.fromLTRB(95,910,0,0),
          height: 22,
          width: 25,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Text('05',style: TextStyle(color: Colors.black,
              // fontStyle: FontStyle.Raleway,
              fontWeight: FontWeight.w600,
              fontFamily:'Poppins',
              fontSize: 9.0),)
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(225,910,0,0),


          height: 22,
          width: 22,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Text('12',style: TextStyle(color: Colors.black,
              // fontStyle: FontStyle.Raleway,
              fontWeight: FontWeight.w600,
              fontFamily:'Poppins',
              fontSize: 9.0),)
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(355,910,0,0),


          height: 22,
          width: 22,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Text('20',style: TextStyle(color: Colors.black,
              // fontStyle: FontStyle.Raleway,
              fontWeight: FontWeight.w600,
              fontFamily:'Poppins',
              fontSize: 9.0),)
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(95,1040,0,0),


          height: 22,
          width: 22,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Text('52',style: TextStyle(color: Colors.black,
              // fontStyle: FontStyle.Raleway,
              fontWeight: FontWeight.w600,
              fontFamily:'Poppins',
              fontSize: 9.0),)
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(225,1040,0,0),


          height: 22,
          width: 22,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Text('10',style: TextStyle(color: Colors.black,
              // fontStyle: FontStyle.Raleway,
              fontWeight: FontWeight.w600,
              fontFamily:'Poppins',
              fontSize: 9.0),)
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(355,1040,0,0),


          height: 22,
          width: 22,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Text('25',style: TextStyle(color: Colors.black,
              // fontStyle: FontStyle.Raleway,
              fontWeight: FontWeight.w600,
              fontFamily:'Poppins',
              fontSize: 9.0),)
      ),

      Container(
          margin: const EdgeInsets.fromLTRB(30,910,0,0),


          height:40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Image.asset("assets/Cap.png")
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(160,910,0,0),


          height:40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Image.asset("assets/Job.png")
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(290,910,0,0),


          height:40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Image.asset("assets/Scheme.png")
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(30,1040,0,0),


          height:40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Image.asset("assets/Subsidies.png")
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(160,1040,0,0),


          height:40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Image.asset("assets/Scholarships.png")
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(290,1040,0,0),


          height:40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3)
          ),
          padding: const EdgeInsets.all(5),
          child: Image.asset("assets/Government.png")
      ),

      Container(
          margin: const EdgeInsets.fromLTRB(20,1150,20,0),
          child: Divider()
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(20,1180, 35, 20),
          child: Text(
            'Recent Customer Review',
            style: TextStyle(color: Colors.black,
                // fontStyle: FontStyle.Raleway,
                fontWeight: FontWeight.bold,
                fontFamily:'Raleway',
                fontSize: 16.0),
          )

      ),
      Container(
        height: 140,
          margin: const EdgeInsets.fromLTRB(0,1220,0,0),
          child:CarouselSlider(
            items: [
              Container(

                decoration: BoxDecoration(
                  color: Color.fromRGBO(228, 237, 255,120),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20,20,0, 0),
                          child: Image(image: AssetImage('assets/stars.png')),

                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                          child: Image(image: AssetImage('assets/stars.png')),

                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                          child: Image(image: AssetImage('assets/stars.png')),

                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                          child: Image(image: AssetImage('assets/star.png')),

                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                          child: Image(image: AssetImage('assets/star.png')),

                        ),
                      ],
                    ),
        Row(
          children: [Container(
            margin:const EdgeInsets.fromLTRB(20,10,10,0),
            child:Text('Rohit Sharma',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'Raleway',color:Colors.black)),
          ),
          ]
        ),
        Row(
          children: [Container(
            margin:const EdgeInsets.fromLTRB(20,10,0,0),
              child:Text('Excellent service from start to finish. The vendor was',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,fontFamily: 'Raleway',color:Colors.grey[600])),
             )]
        ),
                    Row(
                        children: [Container(
                          margin:const EdgeInsets.fromLTRB(20,0,0,0),
                          child:Text('professional, punctual, and went above and beyond',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,fontFamily: 'Raleway',color:Colors.grey[600])),
                        )]
                    ),
                    Row(
                        children: [Container(
                          margin:const EdgeInsets.fromLTRB(20,0,0,0),
                          child:Text('to meet our requirements. Highly recommended',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,fontFamily: 'Raleway',color:Colors.grey[600])),
                        )]
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
        margin: const EdgeInsets.fromLTRB(0, 1800, 0, 0),
        color: Colors.blue,
      )

    ]
    ),
    ]
    ),
    ),
    ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child:Image(image: AssetImage('assets/Home2.png'))),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  // padding: EdgeInsets.symmetric(vertical: 5),
                    child:IconButton(onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>  Services()));
                    },icon: Image(image: AssetImage('assets/Service2.png')) )),
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
