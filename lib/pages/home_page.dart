import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: GridView.builder(
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 2,
    //       mainAxisSpacing: 10,
    //       crossAxisSpacing: 10,
    //       childAspectRatio: 100 / 50,
    //     ),
    //     // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //     //   maxCrossAxisExtent: 100,
    //     // ),
    //     itemCount: randomColors.length * 2,
    //     itemBuilder: (context, index) {
    //       return Container(
    //         // margin: EdgeInsets.symmetric(vertical: 10),
    //         width: 50,
    //         height: 100,
    //         child: Image.network(
    //           'https://cataas.com/cat/says/hello%20world!',
    //           fit: BoxFit.cover,
    //         ),
    //       );
    //     },
    //   ),
    // );
    // return Scaffold(
    //   body: Center(
    //     child: Container(
    //       margin: EdgeInsets.symmetric(horizontal: 10),
    //       clipBehavior: Clip.hardEdge,
    //       decoration: BoxDecoration(
    //         border: Border.all(color: Colors.white, width: 5),
    //         borderRadius: BorderRadius.circular(15),
    //         boxShadow: [
    //           BoxShadow(
    //             color: Colors.black.withOpacity(.08),
    //             offset: Offset(0, 3),
    //             blurRadius: 10,
    //           )
    //         ],
    //       ),
    //       child: Stack(
    //         alignment: Alignment.center,
    //         children: [
    //           ClipRRect(
    //             borderRadius: BorderRadius.circular(10),
    //             child: CarouselSlider(
    //               carouselController: carouselController,
    //               items: [
    //                 Container(
    //                   color: randomColors[0],
    //                 ),
    //                 Container(
    //                   color: randomColors[1],
    //                 ),
    //                 Container(
    //                   color: randomColors[2],
    //                 ),
    //                 Container(
    //                   color: randomColors[3],
    //                 ),
    //                 Container(
    //                   color: randomColors[4],
    //                 ),
    //               ],
    //               options: CarouselOptions(
    //                 viewportFraction: .9,
    //               ),
    //             ),
    //           ),
    //           Align(
    //             alignment: Alignment.centerLeft,
    //             child: InkWell(
    //               onTap: () {
    //                 carouselController.previousPage(
    //                   duration: Duration(milliseconds: 600),
    //                   curve: Curves.bounceOut,
    //                 );
    //               },
    //               child: Padding(
    //                 padding: const EdgeInsets.only(left: 10),
    //                 child: Icon(
    //                   Icons.arrow_back_ios,
    //                 ),
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    return Scaffold(
      body: CarouselSlider(
        // carouselController: carouselController,
        items: [
          Container(
            color: randomColors[0],
          ),
          Container(
            color: randomColors[1],
          ),
          Container(
            color: randomColors[2],
          ),
          Container(
            color: randomColors[3],
          ),
          Container(
            color: randomColors[4],
          ),
        ],
        options: CarouselOptions(),
      ),
    );
  }
}

List<Color> randomColors = [
  Colors.red,
  Colors.orangeAccent,
  Colors.orange,
  Colors.greenAccent,
  Colors.green,
  Colors.pink,
  Colors.pinkAccent,
  Colors.purple,
  Colors.purpleAccent,
];
