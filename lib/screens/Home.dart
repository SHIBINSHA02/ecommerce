import 'package:flutter/material.dart';
import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  final void Function(bool) toggleTheme;

  const HomeScreen({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: const CustomDrawer(),
      body: Center(
        child: Text('Welcome to eCommerce int2!'),
      ),
    );
  }
}