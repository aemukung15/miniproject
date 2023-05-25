import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class Google_Bottom_Bar extends StatefulWidget {
  const Google_Bottom_Bar({super.key});

  @override
  State<Google_Bottom_Bar> createState() => _Google_Bottom_BarState();
}

class _Google_Bottom_BarState extends State<Google_Bottom_Bar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: GNav(
            rippleColor: const Color.fromARGB(100, 25, 100, 78),// Tab button ripple color when pressed
            hoverColor:const Color.fromARGB(100, 25, 100, 78), // Tab button hover color
            haptic: true, // Enable haptic feedback
            tabBorderRadius: 15,
            tabActiveBorder: Border.all(color: Colors.black, width: 1), // Tab button border when selected
            tabBorder: Border.all(color: Colors.grey, width: 1), // Tab button border
            tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // Tab button shadow
            curve: Curves.easeOutExpo, // Tab animation curve
            duration: const Duration(milliseconds: 900), // Tab animation duration
            gap: 8, // Gap between icon and text in the tab button
            color: Colors.grey[800], // Unselected icon color
            activeColor: Colors.purple, // Selected icon and text color
            iconSize: 24, // Tab button icon size
            tabBackgroundColor: Colors.purple.withOpacity(0.1), // Selected tab background color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5), // Navigation bar padding
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: const[
               GButton(
                icon: Icons.back_hand,
                text: 'Home',
              ),
              GButton(
                icon: Icons.book,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.home,
                text: 'Search',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
