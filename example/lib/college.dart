import 'package:flutter/material.dart';

class college extends StatelessWidget {
  static const routeName = '/college';

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> colleges = [
      {
        'photoUrl': 'https://www.gkseries.com/blog/wp-content/uploads/2020/03/Dr-DY-Patil-College-of-Polytechnic-Kolhapur.jpg', // Replace with actual photo URL
        'description': 'Campus',
      },
      {
        'photoUrl': 'https://dypp.dypgroup.edu.in/wp-content/uploads/2023/04/335088991_153128527623736_1053049155140328577_n.jpg', // Replace with actual photo URL
        'description': 'Spandan - Annual Day',
      },
      {
        'photoUrl': 'https://dypp.dypgroup.edu.in/wp-content/uploads/2023/04/329695411_1230599694560119_1729705955425559505_n.jpg', // Replace with actual photo URL
        'description': 'Traditional Day',
      },
      // Add more colleges as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('College and Activities'),
      ),
      body: ListView.builder(
        itemCount: colleges.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.network(
                  colleges[index]['photoUrl']!,
                  height: 200, // Adjust the height as needed
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    colleges[index]['description']!,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
