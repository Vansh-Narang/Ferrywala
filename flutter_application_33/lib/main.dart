import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_33/Login/customer.dart';
import 'package:flutter_application_33/Login/lang.dart';
import 'package:flutter_application_33/Login/optionpage.dart';
import 'package:flutter_application_33/map/MapScreen.dart';
import 'package:flutter_application_33/map/map.dart';
import 'package:flutter_application_33/map/sample/xyz.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: languageSelection());
  }
}
