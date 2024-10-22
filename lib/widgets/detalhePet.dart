import 'package:flutter/material.dart';

class PetDetailScreen extends StatelessWidget {
  final String name;
  final String imageUrl;

  PetDetailScreen({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(imageUrl, height: 200),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Location: Thornridge, Chicago (5km)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Male, 1 Year, 10 Kg',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ação de adoção
              },
              child: Text('Adopt Me'),
            ),
          ],
        ),
      ),
    );
  }
}
