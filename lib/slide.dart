import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MySlide extends StatefulWidget {
  const MySlide({Key? key}) : super(key: key);

  @override
  State<MySlide> createState() => _MySlideState();
}

class _MySlideState extends State<MySlide> {
  int currentIndex = 5; // Declare currentIndex variable
  CarouselController carouselController =
      CarouselController(); // Declare carouselController variable

  List<Map<String, dynamic>> imageList = [
    {"id": 1, "image_path": 'assets/slide1.png'},
    {"id": 2, "image_path": 'assets/slide2.png'},
    {"id": 3, "image_path": 'assets/slide3.png'},
    {"id": 4, "image_path": 'assets/slide4.png'},
    {"id": 5, "image_path": 'assets/slide5.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/cover3.png'), // Replace with your image path
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const SizedBox(height: 300),
            SizedBox(
              height: 100,
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: SizedBox(
                            width: double.infinity,
                            child: Image.asset(
                              imageList[currentIndex]['image_path'],
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: CarouselSlider(
                  items: imageList
                      .map(
                        (item) => Image.asset(
                          item['image_path'],
                          fit: BoxFit.cover,
                          width: 300,
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    height: 600,
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
