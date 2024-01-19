import 'package:flutter/material.dart';
//import 'profile_screen.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool receiveNotifications = true;
  int selectedTheme = 0; // 0: Light, 1: Dark

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Notification Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: Text('Receive Notifications'),
              value: receiveNotifications,
              onChanged: (value) {
                setState(() {
                  receiveNotifications = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Theme Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile<int>(
              title: Text('Light Theme'),
              value: 0,
              groupValue: selectedTheme,
              onChanged: (value) {
                setState(() {
                  //selectedTheme = value;
                });
              },
            ),
            RadioListTile<int>(
              title: Text('Dark Theme'),
              value: 1,
              groupValue: selectedTheme,
              onChanged: (value) {
                setState(() {
                  //selectedTheme = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
