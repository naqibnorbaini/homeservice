
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:homeservice/Login_Screen.dart';
import 'package:homeservice/authenticationservice.dart';
import 'package:homeservice/home.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
            create: (context) => context.read<AuthenticationService>().authStateChanges,
        ),
      ],
        child: MaterialApp(
        theme: ThemeData(
           fontFamily: 'Raleway',
            primarySwatch: Colors.cyan,
            scaffoldBackgroundColor: const Color(0xFFEFEFEF),
    ),
        home: AuthenticationWrapper()
    ),
      );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper(
  {
    Key key,

}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final firebaseUser = context.watch<User>();
  if (firebaseUser != null){
    return Homescreen();
  }
  return LoginPage();
  }
}



