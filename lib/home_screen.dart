import 'package:flutter/material.dart';
import 'timetable_screen.dart';
import 'search_results.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Busify')),
      body: Column(
        children: [
          // Search Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const TextField(
                  decoration:
                      InputDecoration(labelText: 'Enter Start Location'),
                ),
                const TextField(
                  decoration: InputDecoration(labelText: 'Enter Destination'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchResultsScreen()),
                    );
                  },
                  child: const Text('Search Buses'),
                ),
              ],
            ),
          ),
          // Bus Enquiry Center
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text('Bus Enquiry Center'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Live Bus Status')),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Bus Number')),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TimetableScreen()),
                        );
                      },
                      child: const Text('Timetable'),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Seat Avail')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'My Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.support), label: 'Support'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
