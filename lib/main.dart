import 'package:flutter/material.dart';
import 'package:miniproject/home/homepage.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    return MaterialApp(
      title: 'Fluer Demo',
      theme: ThemeData(
        primarySwatch: createMaterialColor(const Color.fromARGB(255, 195, 118, 89)),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 254, 204),
      ),
      home: const MyHomePage(
        title: 'Home',
      ),
    );
  }
}
