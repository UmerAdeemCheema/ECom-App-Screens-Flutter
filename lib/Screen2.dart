import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'package:ecommerceappscreens/Screen3.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 10,),
          Row(
            children:[ Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20,top: 10),
                      child: Text("Muhammad Umer Adeem", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20,top: 5),
                      child: Text("adeemumer800@gmail.com"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20,top: 15),
                      child: Text("Logout", style: TextStyle(color: Colors.purple,fontSize: 15),),
                    ),
                  ],
                ),
            ),],
          ),
          SizedBox(height: 30,),
          Text("ACCOUNT INFORMTION", style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          ListTile(
            title: Text("Full Name"),
            subtitle: Text("Muhammad Umer Adeem"),
            trailing: Icon(Icons.edit ,)
          ),
          ListTile(
            title: Text("Email"),
            subtitle: Text("adeemumer800@gmail.com"),
          ),
          ListTile(
            title: Text("Phone"),
            subtitle: Text("0347 0707178"),
          ),
          ListTile(
            title: Text("Address"),
            subtitle: Text("Krachi, Pakistan"),
          ),
          ListTile(
            title: Text("Gender"),
            subtitle: Text("Male"),
          ),
          ListTile(
            title: Text("Date of Birth"),
            subtitle: Text("June 23, 2001"),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text("ECom App UI", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.notifications, color: Colors.black,),
            ),
          ]
        ),
        body: Center(child: Screen11())),));}, child: Text('Screen 1')),
          ElevatedButton(onPressed: (){}, child: Text('Screen 2')),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text("ECom App UI", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.notifications, color: Colors.black,),
            ),
          ]
        ),
        body: Center(child: Screen3())),));}, child: Text('Screen 3')),]),
        ],)
      ),
    );
  }
}