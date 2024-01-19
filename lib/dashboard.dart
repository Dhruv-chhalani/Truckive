import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'profile_screen.dart';
import 'notification.dart';

void main() => runApp(TruckiveApp());

class TruckiveApp extends StatelessWidget {
  ThemeData _theme = ThemeData.light();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Truckive',
      theme: _theme,
      darkTheme: ThemeData.dark(),
      home: DashboardScreen(),
    );
  }

  void setTheme(ThemeData theme) {
    _theme = theme;
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Container(
      child: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(23.0261076, 72.5565443),
          initialZoom: 14,
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
                  'https://cdn-icons-png.flaticon.com/512/2344/2344094.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    ReportsScreen(),
    DetailsScreen(
      driverName: 'John Doe',
      phoneNumber: '+1 (123) 456-7890',
      emergencyContact: '+1 (987) 654-3210',
      licenseInformation: 'DL123456',
      truckNumber: 'TRK123',
      truckVinNumber: 'VIN789',
    ),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Truckive Dashboard'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).bottomAppBarColor,
          ),
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
                icon: Icon(Icons.details),
                label: 'Details',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
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
          ReportCard(
            title: 'Truck Status',
            onPressed: () {
              // Implement action for checking truck status
            },
          ),
          SizedBox(height: 16.0),
          ReportCard(
            title: 'Truck Location',
            onPressed: () {
              // Implement action for checking truck location
            },
          ),
          // Add more report cards as needed
        ],
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ReportCard({
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: onPressed,
                  child: Text('Check Report'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String driverName;
  final String phoneNumber;
  final String emergencyContact;
  final String licenseInformation;
  final String truckNumber;
  final String truckVinNumber;

  DetailsScreen({
    required this.driverName,
    required this.phoneNumber,
    required this.emergencyContact,
    required this.licenseInformation,
    required this.truckNumber,
    required this.truckVinNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          heightFactor: 0.5, // Set the height factor as per your requirement
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Colors.blue, width: 2.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Driver\'s Details',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(height: 16.0),
                          _buildLicenseField('Driver\'s Name', driverName),
                          _buildLicenseField('Number', phoneNumber),
                          _buildLicenseField(
                              'Emergency Contact', emergencyContact),
                          _buildLicenseField('License No', licenseInformation),
                          _buildLicenseField('Truck No', truckNumber),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                            ),
                          ),
                          child: Icon(
                            Icons.local_shipping,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLicenseField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        Divider(height: 8.0, color: Colors.blue),
      ],
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
                  _showNotificationStatus(value);
                });
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Theme Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: Text('Dark Theme'),
              value: selectedTheme == 1,
              onChanged: (value) {
                setState(() {
                  selectedTheme = value ? 1 : 0;
                  _setTheme();
                  _showThemeChangeStatus(value);
                });
              },
            ),
            // Sign Out Button
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle sign out logic here
                      _showSignOutConfirmation();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(
                          255, 249, 102, 62), // Light red background color
                      onPrimary: Colors.black, // Black font color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16.0,
                      ),
                      child: Text(
                        'Sign Out',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showNotificationStatus(bool enabled) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Notifications'),
          content: Text(
              enabled ? 'Notifications Enabled' : 'Notifications Disabled'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _setTheme() {
    if (selectedTheme == 1) {
      _applyDarkTheme();
    } else {
      _applyLightTheme();
    }
  }

  void _showThemeChangeStatus(bool darkThemeEnabled) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Theme Change'),
          content: Text(
              darkThemeEnabled ? 'Dark Theme Enabled' : 'Light Theme Enabled'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _applyDarkTheme() {
    final darkTheme = ThemeData.dark().copyWith();
    // Replace 'TruckiveApp' with the actual ancestor widget type
    // and adjust the setTheme method accordingly
    final truckiveApp = context.findAncestorWidgetOfExactType<TruckiveApp>();
    truckiveApp?.setTheme(darkTheme);
  }

  void _applyLightTheme() {
    final lightTheme = ThemeData.light().copyWith();
    // Replace 'TruckiveApp' with the actual ancestor widget type
    // and adjust the setTheme method accordingly
    final truckiveApp = context.findAncestorWidgetOfExactType<TruckiveApp>();
    truckiveApp?.setTheme(lightTheme);
  }

  void _showSignOutConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Sign Out'),
          content: Text('Are you sure you want to sign out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                // Add your sign out logic here
                // For example, you can navigate to the sign-in screen
                await FirebaseAuth.instance.signOut();
                Navigator.pushNamed(context, 'login');
              },
              child: Text('Sign Out'),
            ),
          ],
        );
      },
    );
  }
}
