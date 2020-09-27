import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: PostCardPage(),
    );
  }
}

class PostCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Appbar"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage(
                          "images/profile.png"
                        )
                      ),
                      title: Text("Lorem Ipsum Channel", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      subtitle: Column(
                        children: <Widget>[
                          Container(
                            width:MediaQuery.of(context).size.width,
                            child: Text("John Doe", style: TextStyle(fontSize:13)),
                          ),
                          Container(
                            width:MediaQuery.of(context).size.width,
                            child: Text("19 September 2020, 13:54pm", style: new TextStyle(fontSize: 12)),
                          ),
                        ],
                      ),
                      trailing: Wrap(
                        spacing: 9,
                        children: <Widget>[
                          Icon(Icons.file_download, size: 25.0, color: Colors.black54),
                          Icon(Icons.bookmark, size: 25.0,),
                          Icon(Icons.more_vert, color: Colors.black),
                        ],
                      ),
                      contentPadding: EdgeInsets.only(left: 0.0, right: 5.0, top: 0.0, bottom: 0.0),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10.0, bottom:10.0, left: 5.0, right: 5.0),
                    child: Image(
                      image: AssetImage("images/bgImg.png"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5.0, right: 5.0, bottom:10.0),
                    width:MediaQuery.of(context).size.width,
                    child: Text(
                      "(Description of post...)Lorem Ipsum dolor sit amet. This is ceholder. Doo not focus on  the language. You free an would be an ann https://google.com have donfsefwfe the web wgw gw "
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5.0, bottom: 6.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.visibility,
                          size: 20.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 5.0,),
                        Text("1000 Views  2 Files Attached", style: TextStyle(fontFamily: 'Rajdhani',fontSize: 12, fontWeight: FontWeight.normal),)
                      ],
                    ),
                  ),
                ],
            ),
              )
          ),
        ],
      )
    );
  }
}
