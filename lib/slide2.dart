import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MySlide2 extends StatefulWidget {
  const MySlide2({Key? key}) : super(key: key);

  @override
  State<MySlide2> createState() => _MySlide2State();
}

class _MySlide2State extends State<MySlide2> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
            child: InkWell(
              child: CarouselSlider(
                items: imageList
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: 400,
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  height: 60,
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 1,
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
    );
  }
}

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: createMaterialColor(const Color.fromARGB(255, 80, 40, 4)),
        // Add any other customizations to the theme if needed.
      ),
      home: const MySlide2(),
    );
  }
}

MaterialColor createMaterialColor(Color color) {
  List<double> strengths = <double>[.05];
  Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
