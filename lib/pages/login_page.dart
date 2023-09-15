import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/hotel_owner.dart';
import 'package:get/get.dart';

import 'all_hotels.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
    required this.hotelOwner,
  });
  final HotelOwner hotelOwner;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourista'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Login..',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[900],
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'username',
                  ),
                ),
                width: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                width: 100,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    var color = Colors.white;
                    Get.to(
                      () => AllHotels(
                        hotelOwner: hotelOwner,
                        color: color,
                      ),
                      preventDuplicates: false,
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.purple[900],
                    ),
                  ),
                ),
                width: 120,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
