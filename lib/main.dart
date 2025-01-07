import 'package:flutter/material.dart';
import 'package:space_app/ui/home/home_screen.dart';
import 'package:space_app/ui/login/login_screen.dart';
import 'package:space_app/ui/planet_details/planet_details.dart';

void main() {
  runApp(const MyApp());
}
//by jone
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     routes:{
       LoginScreen.routeName:(_)=>LoginScreen(),
       HomeScreen.routeName:(_)=>HomeScreen(),
       PlanetDetails.routeName:(_)=>PlanetDetails(),

     },
      initialRoute: LoginScreen.routeName,
    );
  }
}
