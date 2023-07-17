import 'package:flutter/material.dart';
import 'package:miniproject/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Manual extends StatefulWidget {
  const Manual({Key? key}) : super(key: key);

  @override
  State<Manual> createState() => _ManualState();
}

class _ManualState extends State<Manual> {
  int currentIndex = 6; // Declare currentIndex variable
  CarouselController carouselController =
      CarouselController(); // Declare carouselController variable

  List<Map<String, dynamic>> imageList = [
    {"id": 1, "image_path": 'assets/home_page.png'},
    {"id": 2, "image_path": 'assets/hamburg.png'},
    {"id": 3, "image_path": 'assets/record.png'},
    {"id": 4, "image_path": 'assets/Tha_menu.png'},
    {"id": 5, "image_path": 'assets/develop.png'},
    {"id": 6, "image_path": 'assets/refer.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'คู่มือ',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      endDrawer: const MyDrawer(),
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
            const SizedBox(height: 540), // Adjust the height as needed
            InkWell(
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
                        width: double.infinity,
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
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
            const SizedBox(height: 20), // Adjust the height as needed
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.asMap().entries.map(
                  (entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 7,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 3.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? const Color.fromARGB(255, 239, 214, 157)
                              : const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            // Add more widgets here
          ],
        ),
      ),
    );
  }
}
