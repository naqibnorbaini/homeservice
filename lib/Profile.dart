import "package:flutter/material.dart";
import 'package:homeservice/authenticationservice.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}
TextEditingController passwordController = TextEditingController();

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(
          'Profile'),
    ),
    body: SafeArea(
    child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage(''),
        ),
        Text(
          'Proto Coders Point',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        Text(
          'Welcome',
          style: TextStyle(
            fontSize: 20,
            color: Colors.red[400],
            letterSpacing: 2.5,
          ),
        ),
        SizedBox(
          height: 20.0,
          width: 200,
          child: Divider(
            color: Colors.teal[100],
          ),
        ),
        Text("Keep visiting protocoderspoint.com for more contents"),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
              ),
              labelText: 'Password',
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {
            context.read<AuthenticationService>().signOut();
          },
          child: Text("Sign Out"),
        ),

        Card(
          color: Colors.white,
          margin:
          EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: ListTile(
            leading: Icon(
              Icons.cake,
              color: Colors.teal[900],
            ),
            title: Text(
              '08-05-1995',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        )
      ],
    ),
    ),
    ),
    );
  }
}
