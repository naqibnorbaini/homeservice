import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:homeservice/authenticationservice.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<SignUpPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Enter Your Account Information',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),),
                  labelText: 'E-Mail',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),),
                  labelText: 'Phone Number',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),),
                  labelText: 'Password',
                ),
              ),
            ),

            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.cyan,
                  child: Text('Sign Up'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {
                    context.read<AuthenticationService>().signUp(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                    User updateUser = FirebaseAuth.instance.currentUser;
                    updateUser.updateProfile(displayName: usernameController.text);
                    userSetup(usernameController.text);
                  },
                )),
          ],
        ),
      ),
    );
  }

  void userSetup(String text) {}
}
