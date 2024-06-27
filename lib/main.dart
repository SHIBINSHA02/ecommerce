import 'package:flutter/material.dart';
import 'screens/drawer.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eCommerce int2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        canvasColor: Color.fromARGB(255, 250, 250, 250),
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat",
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        drawer: const CustomDrawer(), // Add the custom drawer here
        body: Center(
          child: Text('Welcome to eCommerce int2!'),
        ),
      ),
    );
  }
}

