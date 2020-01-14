import 'package:flutter/material.dart';

class Product extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar:  AppBar( 
        title: Text("Product page"),
      ),
      body: ListView( 
        children: <Widget>[
        Image.network("https://images.pexels.com/photos/1308881/pexels-photo-1308881.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),      
           Container( 
             margin: EdgeInsets.only(top: 10.0),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.network("https://previews.123rf.com/images/famveldman/famveldman1506/famveldman150600081/40964814-little-cute-girl-with-flowers-child-wearing-a-pink-hat-playing-in-a-blooming-summer-garden-kids-gard.jpg",fit: BoxFit.cover,width: 200,),
                  Image.network("https://previews.123rf.com/images/famveldman/famveldman1506/famveldman150600081/40964814-little-cute-girl-with-flowers-child-wearing-a-pink-hat-playing-in-a-blooming-summer-garden-kids-gard.jpg",fit: BoxFit.cover,width: 200,),
                  
                ],
              ),
            ),
           Container( 
             margin: EdgeInsets.only(top: 10.0),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.network("https://previews.123rf.com/images/famveldman/famveldman1506/famveldman150600081/40964814-little-cute-girl-with-flowers-child-wearing-a-pink-hat-playing-in-a-blooming-summer-garden-kids-gard.jpg",fit: BoxFit.cover,width: 400,),
                  
                ],
              ),
            ),
        ],
      ),
    );
  }
}
