import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: NotificationContent(),
    );
  }
}

class NotificationContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  'New Notification 1',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Details of Notification 1'),
                onTap: () {
                  // Implement action when notification is tapped
                },
              ),
            ),
            SizedBox(height: 16.0),
            Card(
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  'New Notification 2',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Details of Notification 2'),
                onTap: () {
                  // Implement action when notification is tapped
                },
              ),
            ),
            // Add more ListTile UI for other notifications as needed
            SizedBox(height: 16.0),
            Card(
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  'New Notification 3',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Details of Notification 3'),
                onTap: () {
                  // Implement action when notification is tapped
                },
              ),
            ),
            SizedBox(height: 16.0),
            Card(
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  'New Notification 4',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Details of Notification 4'),
                onTap: () {
                  // Implement action when notification is tapped
                },
              ),
            ),
            SizedBox(height: 16.0),
            Card(
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  'New Notification 5',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Details of Notification 6'),
                onTap: () {
                  // Implement action when notification is tapped
                },
              ),
            ),
            SizedBox(height: 16.0),
            Card(
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  'New Notification 7',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Details of Notification 7'),
                onTap: () {
                  // Implement action when notification is tapped
                },
              ),
            ),
            // Add more ListTile UI for other notifications as needed
            SizedBox(height: 16.0),
            Card(
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  'New Notification 8',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Details of Notification 8'),
                onTap: () {
                  // Implement action when notification is tapped
                },
              ),
            ),
            SizedBox(height: 16.0),
            Card(
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  'New Notification 9',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Details of Notification 9'),
                onTap: () {
                  // Implement action when notification is tapped
                },
              ),
            ),
            SizedBox(height: 16.0),
            Card(
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  'New Notification 10',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Details of Notification 10'),
                onTap: () {
                  // Implement action when notification is tapped
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
