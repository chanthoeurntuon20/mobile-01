import 'package:flutter/material.dart';
import 'package:navigation_row_colum/screens/Product.dart';
import 'package:navigation_row_colum/screens/About.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar:  AppBar( 
        title: Text("Home page"),
        centerTitle: true,
      ),
      body: Container( 
        child: Center( 
          child: Row( 
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton( 
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Product()),
                  );
                },
                child: Text("Let to"),
              ),
              RaisedButton( 
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => About()),
                  );
                },
                child: Text("Let to"),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar( 
        child: Container( 
          color: Colors.grey,
          child: Row( 
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton( 
                icon: Icon(Icons.home),
                onPressed: (){},
              ),
              IconButton( 
                icon: Icon(Icons.phone),
                onPressed: (){},
              ),
              IconButton( 
                icon: Icon(Icons.email),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}