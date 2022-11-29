import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:school_management_system/pages/login.dart';
import 'package:school_management_system/navbar.dart';
import 'package:school_management_system/user/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Future<FirebaseApp>_initialization=Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
     future: _initialization,builder:(context,snapshot){
        //Check for the error
      if(snapshot.hasError){
        print("Something wents wrong");
      }
      if(snapshot.connectionState==ConnectionState.waiting){
        return Center(child: CircularProgressIndicator(),);
      }
      return
        MaterialApp(
          title: 'Flutter App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.brown,
          ),

          home: login(),
        );

        });
  }
}





// <------------------------          ------------------>

