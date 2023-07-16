import 'package:flutter/material.dart';
import 'package:miniproject/drawer.dart';

// ignore: camel_case_types
class developer extends StatelessWidget {
  const developer({super.key});
  // ignore: use_key_in_widget_constructors

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'คณะผู้พัฒนา',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/cover3.png'), // Replace with your image path
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
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
                                    child: IntrinsicHeight(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/D_2_2.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                          // Add your onTap logic for the first image
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: Image.asset(
                            "assets/D_2.png",
                            width: 400, // Set the desired width for the image
                            height: 600, // Set the desired height for the image
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
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
                                    child: IntrinsicHeight(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/DR.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: Image.asset(
                            "assets/DR2.png",
                            width: 400, // Set the desired width for the image
                            height: 600, // Set the desired height for the image
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                  // Rest of your code...
                ],
              ),
            ),
          ),
        ),
      ),
      endDrawer: const MyDrawer(),
    );
  }
}