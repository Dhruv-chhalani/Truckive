import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            // Navigate to user profile/settings
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Settings'),
      ),
      body: ProfileSettingsForm(),
    );
  }
}

class ProfileSettingsForm extends StatefulWidget {
  @override
  _ProfileSettingsFormState createState() => _ProfileSettingsFormState();
}

class _ProfileSettingsFormState extends State<ProfileSettingsForm> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Update Profile',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(labelText: 'Username'),
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Save changes to the profile
              _saveProfileChanges(context);
            },
            child: Text('Save Changes'),
          ),
        ],
      ),
    );
  }

  void _saveProfileChanges(BuildContext context) {
    // Implement logic to save changes to the profile
    // For example, you can update the user's information in the database
    // and then navigate back to the profile screen
    // For now, we'll just print the changes to the console
    String newUsername = _usernameController.text;
    String newEmail = _emailController.text;

    print('New Username: $newUsername');
    print('New Email: $newEmail');

    // You can add your own logic to save the changes to the backend/database

    // Navigate back to the profile screen
    Navigator.pop(context);
  }
}
