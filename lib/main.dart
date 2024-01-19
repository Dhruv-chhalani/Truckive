import 'package:flutter/material.dart';
//import 'package:loginuicolors/SettingsScreen.dart';
import 'package:loginuicolors/login.dart';
import 'package:loginuicolors/register.dart';
import 'package:loginuicolors/forgot.dart';
import 'package:loginuicolors/dashboard.dart';
import 'package:loginuicolors/profile_screen.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:loginuicolors/splash.dart';
// bfb/f

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions
        .currentPlatform, // Replace with your Firebase options
  );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'forgot': (context) => ForgotPasswordScreen(),
      'truckive': (context) => TruckiveApp(),
      'dashboard': (context) => DashboardScreen(),
      'profile': (context) => ProfileScreen(),
      //'settings': (context) => SettingsScreen(),

      //'analytics': (context) => TruckAnalyticsWidget(),
      'splash': (context) => SplashScreen(),
    },
  ));
}
