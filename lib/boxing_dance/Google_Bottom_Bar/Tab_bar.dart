import 'package:flutter/material.dart';
import 'package:miniproject/home/homepage.dart';
import 'package:miniproject/lib/drawer.dart';

import '../../drawer.dart';
class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);


  @override
  // ignore: no_logic_in_create_state
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, 
      child: MaterialApp(
        home: Scaffold(
          key: scaffoldKey,
          appBar: AppBar (
            backgroundColor: const Color.fromARGB(255, 127, 101, 21),
            title: const Text('รำมวยโบราณจังหวัดสกลนคร'),
            
            bottom: TabBar(
              onTap: (index) {
                
              },
              tabs: const <Tab>[
                Tab(icon: Icon(Icons.home),),
                Tab(icon: Icon(Icons.person_pin_outlined),),
                Tab(icon: Icon(Icons.camera_alt),),
              ]),
          ),
          body:  TabBarView(
            children: [
              const Center(child: MyHomePage(title: "sdads"),),
              const Center(child: Text('Home Tab'),),
              const Center(child: Text('Home Tab'),),         
            ]),
            drawer: MyDrawer(),
          ),
      )
      );
  }
}