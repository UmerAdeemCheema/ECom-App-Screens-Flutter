import 'package:flutter/material.dart';
import 'package:ecommerceappscreens/Screen2.dart';
import 'package:ecommerceappscreens/Screen3.dart';

class Screen11 extends StatefulWidget {
  @override
  _Screen11State createState() => _Screen11State();
}

class _Screen11State extends State<Screen11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
                  child: Column(
            children:[
              Screen1tile(),
              Screen1tile(),
              Screen1tile(),
              Screen1tile(),
              Screen1tile(),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[ElevatedButton(onPressed: (){}, child: Text('Screen 1')),
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
            ]
          ),
        )
      );
  }
}

Widget Screen1tile(){
  return Center(
    child: Container(
      height: 100,
      width: 350,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black26),
      ),
      child: Row(children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black26),
            image: DecorationImage(
               image: NetworkImage('https://blog.daraz.pk/wp-content/uploads/photo-gallery/redmi_8_1.jpg?bwg=1591027583'),
               fit: BoxFit.fill,
             ),
          ),
        ),
        Center(
          child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                      Text("Phone", style: TextStyle(fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Icon(Icons.star , color: Colors.yellow, size: 20,),
                          ),
                          Text("5 (20 reviews)"),
                        ],
                      ),
                      Row(
                        children: [
                          Text("20 Pieces  "),
                          Text("\$ 90", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                        ],
                      ),
                      Text("Quantity: 1  "),
                    ]
                  ),
        ),
      ],),
      ),
  );
}




// Container(
//     height: 100,
//     width: 350,
//     margin: EdgeInsets.all(10),
//     decoration: BoxDecoration(
//     color: Colors.green,
//       borderRadius: BorderRadius.circular(10),
//     ),
//     child: Row(children: [
      // Container(
      //   height: 100,
      //   width: 100,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(10),
      //     image: DecorationImage(
      //        image: NetworkImage('https://blog.daraz.pk/wp-content/uploads/photo-gallery/redmi_8_1.jpg?bwg=1591027583'),
      //        fit: BoxFit.fill,
      //      ),
      //   ),
//       )
//     ],),
//     );


// Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children:[
//                   Text("Phone", style: TextStyle(fontWeight: FontWeight.bold),),
//                   Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 5,
//                         backgroundColor: Colors.green,
//                         child: Icon(Icons.star , color: Colors.yellow,),
//                       ),
//                       Text("5 (20 reviews)"),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text("20 Pieces  "),
//                       Text("\$ 90", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
//                     ],
//                   ),
//                   Text("Quantity: 1  "),
//                 ]
//               ),