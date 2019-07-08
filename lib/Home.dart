import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: (){},
        ),
        title: Row(
          children: <Widget>[
             new Text("Near by",style: TextStyle(color: Colors.black),),
             new  IconButton(
              icon: Icon(Icons.arrow_drop_down),
              color: Colors.black,
              onPressed: (){},
              iconSize: 40,
            ),
          ],
        ),
       actions: <Widget>[
         new FlutterLogo(
           colors: Colors.blue,
           size: 40.0,
         )
       ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 30,),
          new Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(80, 0.0, 0.0, 0.0),
                //padding: EdgeInsets.fromLTRB(120, 10, 0.0, 0.0),
                width: 230,
                height: 40,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orangeAccent,

                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(55, 20.0, 0.0, 0.0),
                //padding: EdgeInsets.fromLTRB(120, 10, 0.0, 0.0),
                width: 280,
                height: 40,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlue,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(35, 40.0, 0.0, 0.0),
                //padding: EdgeInsets.fromLTRB(120, 10, 0.0, 0.0),
                width: 320,
                height: 300,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage('https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                  fit: BoxFit.cover
                )
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70, 310.0, 0.0, 0.0),
                //padding: EdgeInsets.fromLTRB(120, 10, 0.0, 0.0),
                width: 250,
                height: 80,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
               //borderRadius: BorderRadius.only(bottomLeft: BorderRadius),
                color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 7.0,color: Colors.black)
                  ]
                ),
                child: ListTile(
                  title: Row(
                    children: <Widget>[
                      new Text("Tom",style: TextStyle(fontWeight: FontWeight.bold),),
                      new Icon(Icons.favorite_border)
                    ],
                  ),
                  subtitle: new Text("Fat is WonderFull"),
                ),
              ),
              
              
            ],
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Center(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new IconButton(
                      icon: Icon(Icons.clear),
                      iconSize: 30,
                      color: Colors.black,
                    ),
                  ),
                    Expanded(
                    child: IconButton(
                      icon: Icon(Icons.add_circle_outline),
                      iconSize: 30,
                    ),
                  ),
                    Expanded(
                     child: IconButton(
                      icon: Icon(Icons.favorite_border),
                      color: Colors.red,
                      iconSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.face),
          )
        ],
      ),
    );
  }
}