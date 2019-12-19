import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var names = <String>["masterpurveyors", "The weeknd"];
  var locations = <String>["London", "Bronx, New York"];
  var dps = <String>['images/dr.jpeg', 'images/weeknd.jpeg'];
  var images = <String>['images/ps5.jpg', 'images/marjin.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Container(
                height: 50.0,
              ),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    child: Image.asset(dps[index]),
                  ),
                  Container(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(names[index]),
                      Text(locations[index])
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              Container(
                height: 5.0,
              ),
              Image.asset(images[index]),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    size: 30.0,
                  ),
                  Container(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.message,
                    size: 30.0,
                  ),
                  Container(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.send,
                    size: 30.0,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(
                    Icons.bookmark_border,
                    size: 30.0,
                  )
                ],
              ),
              Container(
                height: 50.0,
              ),
            ],
          );
        },
        itemCount: dps.length,
      ),
    );
  }
}
