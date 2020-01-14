import 'package:flutter/material.dart';
import 'package:tabcontrollerr/screnn/Home.dart';

class Front extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Stack( 
        children: <Widget>[
          Container( 
            child: Image.network("https://img.etimg.com/thumb/msid-68721417,width-643,imgsize-1016106,resizemode-4/nature1_gettyimages.jpg",
            fit: BoxFit.cover,),
            height: double.infinity,
          ),
          Center( 
           child: RaisedButton(
             color: Colors.pink,
           onPressed: () {
           Navigator.push(context,
            MaterialPageRoute(builder: (context) => Home())
           );
         },
         child: Text("Let go"),
       ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar( 
       child: Container( 
         color: Colors.pink[200],
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             IconButton( 
               onPressed: () {
                 Navigator.push(context, 
                 MaterialPageRoute(builder: (context)=> Home())
                 );
               },
               icon: Icon(Icons.arrow_back),
             ),
             IconButton( 
               onPressed: () {
                 Navigator.push(context, 
                 MaterialPageRoute(builder: (context) => Information())  
                 );
               },
               icon: Icon(Icons.gps_not_fixed),
             ),
             IconButton( 
               onPressed: () {},
               icon: Icon(Icons.library_add),
             ),
             IconButton( 
               onPressed: () {},
               icon: Icon(Icons.backup),
             ),
           ],
         ),
       ),
      ),
      );
  }
}