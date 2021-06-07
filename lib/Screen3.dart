import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'package:ecommerceappscreens/Screen2.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 10,),
          Container(
          width: 250, 
          child: TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.continueAction,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w600),
            decoration: InputDecoration(
              suffixIcon:  Icon(Icons.search),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: BorderSide(),),
              hintText: 'Username',
            ),
            )
          ),
          SizedBox(height: 10,),
          Container(alignment: Alignment.topLeft, child: Text("History", style: TextStyle(fontWeight: FontWeight.bold))),
          SizedBox(height: 10,),
          tile(),
          tile(),
          tile(),
          tile(),
          tile(),
          tile(),
          tile(),
          tile(),
          tile(),
          tile(),
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
        body: Center(child: Screen2())),));}, child: Text('Screen 2')),
          ElevatedButton(onPressed: (){}, child: Text('Screen 3')),]),
      ],)),
    );
  }
}

Widget tile(){
  return ListTile(
    leading: CircleAvatar(
      radius: 30,
      backgroundColor: Colors.grey,
      backgroundImage: NetworkImage("https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    ),
    title: Text("Phone"),
    subtitle: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Icon(Icons.star , color: Colors.yellow, size: 20,),
        ),
        Text("5 (20 reviews)"),
      ],
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:[
        Text("\$ 90"),
      ]
    ),
  );
}