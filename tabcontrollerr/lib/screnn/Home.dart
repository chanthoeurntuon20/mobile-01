import 'package:flutter/material.dart';

  class Home extends StatefulWidget {
    @override
    _HomeState createState() => _HomeState();
  }
  
  class _HomeState extends State<Home> {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
         child: Scaffold( 
           appBar: AppBar( 
             title: Text("Hello"),
             bottom: TabBar(
               tabs: <Widget>[
              Tab(child: Icon(Icons.email),),
              Tab(child: Icon(Icons.search),),
              Tab(child: Icon(Icons.phone),),
               ],
             ),
           ),
           drawer: Drawer(),
           floatingActionButton: FloatingActionButton( 
             onPressed: () {},
             child: IconButton( 
               onPressed: () {
                 Navigator.pop(context);
               },
               icon: Icon(Icons.arrow_back),
             ),
           ),

           body: TabBarView( 
             children: <Widget>[
               Image.network("https://img.etimg.com/thumb/msid-68721417,width-643,imgsize-1016106,resizemode-4/nature1_gettyimages.jpg",
               fit: BoxFit.cover,
               
               ),
                Image.network("https://s3-us-west-2.amazonaws.com/uw-s3-cdn/wp-content/uploads/sites/6/2017/11/04133712/waterfall.jpg",
               fit: BoxFit.cover,
               
               ),
                Image.network("https://www.medicalnewstoday.com/content/images/articles/325/325466/man-walking-dog.jpg",
               fit: BoxFit.cover,
               
               ),
              
             ],
           ),
         ),
        )
      );
    }
  }
