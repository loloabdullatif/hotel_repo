import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/hotel_owner.dart';
import 'more_details.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key, required this.hotelOwner, required this.color});

  final HotelOwner hotelOwner;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tourista ',
        ),
      ),
      body: InkWell(
        onTap: () {
          Get.to(
            () => MoreDetails(
              hotelOwner: hotelOwner,
              color: color,
            ),
          );
        },
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            decoration: BoxDecoration(
              color: getRandomColor().withOpacity(.2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        users[index].id.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Colors.grey[700],
                        ),
                      ),
                      Text(
                        '  ' +
                            users[index].firstName +
                            ' ' +
                            users[index].lastName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        users[index].email,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final List<HotelOwner> users = [
  HotelOwner(
    id: 1,
    firstName: 'John',
    lastName: 'Doe',
    hotelName: 'Grand Hotel',
    email: 'john.doe@example.com',
    phoneNumber: '1234567890',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  HotelOwner(
    id: 2,
    firstName: 'Jane',
    lastName: 'Smith',
    hotelName: 'Luxury Resort',
    email: 'jane.smith@example.com',
    phoneNumber: '9876543210',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  HotelOwner(
    id: 3,
    firstName: 'Michael',
    lastName: 'Johnson',
    hotelName: 'Seaside Inn',
    email: 'michael.johnson@example.com',
    phoneNumber: '5551234567',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  HotelOwner(
    id: 4,
    firstName: 'Emily',
    lastName: 'Anderson',
    hotelName: 'Mountain Lodge',
    email: 'emily.anderson@example.com',
    phoneNumber: '9998887777',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  HotelOwner(
    id: 5,
    firstName: 'David',
    lastName: 'Wilson',
    hotelName: 'City Suites',
    email: 'david.wilson@example.com',
    phoneNumber: '4445556666',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  HotelOwner(
    id: 6,
    firstName: 'Olivia',
    lastName: 'Thomas',
    hotelName: 'Riverside Hotel',
    email: 'olivia.thomas@example.com',
    phoneNumber: '7778889999',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  HotelOwner(
    id: 7,
    firstName: 'James',
    lastName: 'Lee',
    hotelName: 'Harmony Resort',
    email: 'james.lee@example.com',
    phoneNumber: '1231231234',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  HotelOwner(
    id: 8,
    firstName: 'Sophia',
    lastName: 'Martin',
    hotelName: 'Sunset Villa',
    email: 'sophia.martin@example.com',
    phoneNumber: '4564564567',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  HotelOwner(
    id: 9,
    firstName: 'Daniel',
    lastName: 'Clark',
    hotelName: 'Beachfront Resort',
    email: 'daniel.clark@example.com',
    phoneNumber: '7897897890',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  HotelOwner(
    id: 10,
    firstName: 'Isabella',
    lastName: 'Walker',
    hotelName: 'Palm Grove Hotel',
    email: 'isabella.walker@example.com',
    phoneNumber: '3213213210',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
];
Color getRandomColor() {
  return colors[Random().nextInt(colors.length)];
}

List<Color> colors = [
  const Color.fromARGB(255, 176, 143, 143),
  const Color.fromARGB(255, 184, 148, 101),
  const Color.fromARGB(255, 178, 130, 146),
  const Color.fromARGB(255, 174, 131, 182),
  const Color.fromARGB(255, 128, 186, 158),
  const Color.fromARGB(255, 96, 123, 123),
  const Color.fromARGB(255, 93, 133, 123),
];
