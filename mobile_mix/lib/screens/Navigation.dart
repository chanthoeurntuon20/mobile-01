import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.red,
              ),
            ),
          )
        ],
        title: Text("Navigation Pag"),
      ),
      body: ListView( 
        children: <Widget>[
         Image.network("https://i.pinimg.com/474x/5e/e0/39/5ee0393a57800d95f7643f433e91ea1f.jpg",
         fit: BoxFit.cover,
         height: 300,
         ),
         Container( 
           child: Row( 
             children: <Widget>[
              Expanded(
                child: Container( 
                  child: Row(
                     children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.only(right: 80.0),
                       child: Column( 
                         children: <Widget>[
                           Text("Google.com"),
                           SizedBox(height: 10.0,),
                           Text("I alway access it",style: TextStyle(color: Colors.grey),),
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(right: 70.0),
                       child: Column( 
                         children: <Widget>[
                           Icon(Icons.favorite,color: Colors.pink,),
                           Text("My love")
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row( 
                         children: <Widget>[
                           Icon(Icons.favorite_border,color: Colors.pink,size: 20,),
                           Icon(Icons.favorite_border,color: Colors.pink,size: 30,),
                           Icon(Icons.favorite_border,color: Colors.pink,size: 40,),    
                         ],
                       ),
                     ),
                  ],
                  ),
                 
                ),
              )
             ],
           ),
         ),
         Container( 
           margin: EdgeInsets.only(top: 10.0),
           child: Row( 
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Image.network("https://i.pinimg.com/originals/c0/ac/30/c0ac30e21a6cf7dfae8870837c5ccf73.jpg",fit: BoxFit.cover,width: 200,),
               Image.network("https://coconuts.co/wp-content/uploads/2017/06/poyd1.jpg",fit: BoxFit.cover,width: 200,),
             ],
           ),
         ),
         Container( 
           margin: EdgeInsets.only(top: 20.0),
           child: Image.network("https://i.ytimg.com/vi/LAqz7kXyVnE/hqdefault.jpg"),
         )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.blue[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.library_books),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayOpacity: 0.2,
        overlayColor: Colors.blue,
        children: [
          SpeedDialChild(
              child: Icon(Icons.email),
              label: "Email",
              backgroundColor: Colors.pink,
              labelStyle: TextStyle(color: Colors.white),
              labelBackgroundColor: Colors.pink),
          SpeedDialChild(
              child: Icon(Icons.phone),
              label: "Phone",
              backgroundColor: Colors.green,
              labelStyle: TextStyle(color: Colors.white),
              labelBackgroundColor: Colors.green),
          SpeedDialChild(
              child: Icon(Icons.group),
              label: "People",
              backgroundColor: Colors.purple,
              labelStyle: TextStyle(color: Colors.white),
              labelBackgroundColor: Colors.purple),
        ],
      ),
    );
  }
}
