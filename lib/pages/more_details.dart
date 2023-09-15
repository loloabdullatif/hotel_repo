import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/hotel_owner.dart';

class MoreDetails extends StatelessWidget {
  const MoreDetails(
      {super.key, required HotelOwner hotelOwner, required Color color});

  final HotelOwner hotelOwner;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          hotelOwner.id.toString(),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: color,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 60,
                child: Icon(
                  Icons.person,
                  size: 90,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white,
              ),
              Text(
                hotelOwner.firstName + ' ' + hotelOwner.lastName,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                hotelOwner.phoneNumber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
