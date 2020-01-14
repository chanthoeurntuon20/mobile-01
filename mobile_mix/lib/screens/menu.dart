import 'package:flutter/material.dart';
import 'package:mobile_mix/screens/Navigation.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://i.mydramalist.com/ymkzNm.jpg"),
              ),
            ),
          ],
          title: Text("Menu Bar"),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Icon(Icons.email),
              ),
              Tab(
                child: Icon(Icons.phone),
              ),
              Tab(
                child: Icon(Icons.photo),
              ),
              Tab(
                child: Icon(Icons.card_travel),
              ),
            ],
          ),
        ),
        body: TabBarView( 
          children: <Widget>[
            Image.network("https://i.dailymail.co.uk/1s/2019/10/22/14/20037000-0-image-a-2_1571751174717.jpg",
            fit: BoxFit.cover,
            ),
            Image.network("https://i.pinimg.com/474x/5e/e0/39/5ee0393a57800d95f7643f433e91ea1f.jpg",
            fit: BoxFit.cover,
            ),
            Image.network("https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_548/https://neweracreation.com/wp-content/uploads/2019/09/WhatsApp-Image-2019-09-26-at-12.15.33-PM-548x365.jpeg",
            fit: BoxFit.cover,
            ),
            Image.network("https://www.georgianjournal.ge/pictures/image2/ccca1ab29b98036f2eea84d2f73703c8.jpg",
            fit: BoxFit.cover,
            ),
           
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://1.bp.blogspot.com/-0rAWHlep_PM/VkBpzfMie4I/AAAAAAAAAYY/H6pBkc2ss00/s1600/mario%2B.jpg"),
                      radius: 50.0,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/1308881/pexels-photo-1308881.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      "https://i.pinimg.com/474x/5e/e0/39/5ee0393a57800d95f7643f433e91ea1f.jpg",
                      fit: BoxFit.cover,
                      height: 200,
                      width: 500,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Navigation())
                            );
                          },
                          color: Colors.pink,
                          child: Text("Navigation",style: TextStyle(color: Colors.white),)
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: Colors.pink,
                           child: Text("About Page",style: TextStyle(color: Colors.white))
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: Colors.pink,
                          child: Icon(Icons.send,color: Colors.white,),
                        ),
                      ],
                    ),
                    Column( 
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(" The first screen will display an image, with a title at the bottom, aligned left. The second will display the same, with an additional icon in the bottom right of the image."),
                        )
                      ],
                    ),
                   Container( 
                     margin: EdgeInsets.only(top: 20.0),
                     child: Row(  
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6QHf3H6HGSt6TIP7IPbVFuRstsi5EztmHjpbF8NvEP2N_ASE5"),radius: 40,),
                        CircleAvatar(backgroundImage: NetworkImage("https://www.best4geeks.com/wp-content/uploads/2018/11/15-cute-girl-facebook-profile-picture-1-1.jpg"),radius: 40,),
                        CircleAvatar(backgroundImage: NetworkImage("https://www.pixelstalk.net/wp-content/uploads/images1/Cute-Girl-HD-Wallpaper-for-desktop-3.jpg"),radius: 40,),      
                      ],
                    ),
                   )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
