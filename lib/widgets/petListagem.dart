import 'package:flutter/material.dart';
import 'package:pet_adopt/widgets/detalhePet.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Find Your Pet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location: Chicago, US',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryWidget(name: 'Cats'),
                CategoryWidget(name: 'Dogs'),
                CategoryWidget(name: 'Birds'),
                CategoryWidget(name: 'Fishes'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Adopt Pet',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  PetCard(name: 'Amber', imageUrl: 'https://link-da-imagem-pet.com/amber.png'),
                  PetCard(name: 'Kitty', imageUrl: 'https://link-da-imagem-pet.com/kitty.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String name;
  CategoryWidget({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(name),
    );
  }
}

class PetCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  PetCard({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(imageUrl, width: 50, height: 50),
        title: Text(name),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PetDetailScreen(name: name, imageUrl: imageUrl)),
          );
        },
      ),
    );
  }
}
