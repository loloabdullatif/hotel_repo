import 'package:flutter/material.dart';
//import 'package:flutter_application_2/models/hotel_owner.dart';
//import 'package:flutter_application_2/pages/home_page.dart';
import 'package:get/get.dart';
//import 'pages/all_hotels.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: LoginPage(),
    );
  }
}

// HotelOwner x = HotelOwner(
//     id: 1,
//     firstName: 'fn',
//     lastName: 'ln',
//     hotelName: 'lolohotel',
//     email: 'lolo@hotmail.com',
//     phoneNumber: '00000000',
//     description: 'loream');
