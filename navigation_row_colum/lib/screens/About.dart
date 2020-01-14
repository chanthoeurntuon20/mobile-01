import 'package:flutter/material.dart';

class About extends StatelessWidget{
  CircleAvatar data(String img,String text){
      return  CircleAvatar( 
             backgroundImage: NetworkImage(img),
             radius: 50.0,
             child: Text(text),
         );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar:  AppBar( 
        title: Text("About page"),
      ),
      body: ListView( 
        children: <Widget>[
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSoW43fB9Sqo3r3e1-4RUazXw-YxCMND94Po2UtUcr8-DVqihQX",fit: BoxFit.cover,),
          Container( 
            margin: EdgeInsets.only(top: 20.0),
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
               data("http://www.pickolor.com/images/main/meaning-orange-fruit.jpg", "Orange"),
               data("https://i.dailymail.co.uk/i/pix/2017/09/07/12/4400209000000578-4861518-image-a-24_1504784708478.jpg", "Mango"),
               data("http://images.squarespace-cdn.com/content/v1/52f70946e4b045fae91325c9/1516223560342-E4T0HJN80486MXUJUOQR/ke17ZwdGBToddI8pDm48kLne0i1MtCoYeJ99_MQctdwUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKclvbP3i5_4Y8stk9isxurDC3e9mW8_yBVXW6-7RpBBAW3SlAAbeeaMnK-hd-CjU4V/keitt-mango-fruit-5921.jpg", "Orange"),
              ],
            )
          ),
        ],
      ),
    );
  }
}