import "package:flutter/material.dart";
import 'package:homeservice/authenticationservice.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(
          'Profile'),
    ),
    body: Center(
      child: Column(
        children: [
          RaisedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
            child: Text("Sign Out"),
          ),
        ],
      ),
    ),
    );
  }
}
