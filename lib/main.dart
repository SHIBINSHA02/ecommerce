import 'screens/login.dart';
import 'package:flutter/material.dart';
import 'containers/settings_page.dart';
import 'screens/Home.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleTheme(bool isDarkMode) {
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eCommerce int2',
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      initialRoute: '/login',
      routes: {
        '/': (context) => HomeScreen(toggleTheme: _toggleTheme),
        '/settings': (context) => SettingsPage(toggleTheme: _toggleTheme, isDarkMode: _isDarkMode),
        '/login':(context) => LoginPage(),
      },
    );
  }
}




