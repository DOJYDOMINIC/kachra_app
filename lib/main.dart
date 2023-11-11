import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/start_page.dart';


void main(){
  runApp( const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),          /*(home: RegPage())*/

    );
  }
}

