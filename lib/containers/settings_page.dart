import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final void Function(bool) toggleTheme;
  final bool isDarkMode;

  const SettingsPage({Key? key, required this.toggleTheme, required this.isDarkMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Dark Mode'),
            Switch(
              value: isDarkMode,
              onChanged: (value) {
                toggleTheme(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
