import "package:flutter/material.dart";
import 'package:homeservice/HomeCleaning.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(''
            'Search'),
      ),
    body: Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: ListView(
        children: <Widget>[
          RaisedButton(
              onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomeCleaning()),
    );
    },
            child: Text("Test house cleaning"),
          )
        ],
      ),
    ),
    );
  }
}
