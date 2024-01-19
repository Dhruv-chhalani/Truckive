import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'profile_screen.dart';

void main() => runApp(TruckiveApp());

class TruckiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Truckive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

@override
State<StatefulWidget> createState() {
  throw UnimplementedError();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Container(
      child: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(23.0261076, 72.5565443),
          initialZoom: 9.2,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(23.0261076, 72.5565443),
                width: 80,
                height: 80,
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/2344/2344094.png', // Replace with your image URL
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    ), // Map and live tracking
    ReportsScreen(),
    Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          // Implement alert settings and notifications here
        ],
      ),
    ),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Truckive Dashboard'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigate to user profile/settings
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: 'Reports',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Analytics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class ReportsScreen extends StatefulWidget {
  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Truck Reports'),
      ),
      body: ReportsContent(),
    );
  }
}

class ReportsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Truck Status',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement action for checking truck status
            },
            child: Text('Check Status'),
          ),
          SizedBox(height: 16.0),
          Text(
            'Truck Location',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement action for checking truck location
            },
            child: Text('Check Location'),
          ),
          // Add more labels and buttons for other truck reports as needed
        ],
      ),
    );
  }
}

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
                  // selectedTheme = value;
                });
              },
            ),
            RadioListTile<int>(
              title: Text('Dark Theme'),
              value: 1,
              groupValue: selectedTheme,
              onChanged: (value) {
                setState(() {
                  // selectedTheme = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
