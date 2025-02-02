import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  final String petName;
  final String imagePath; // Novo parâmetro para o caminho da imagem

  const PetCard(
      {super.key,
      required this.petName,
      required this.imagePath}); // Inclua imagePath no construtor

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Passa os argumentos ao navegar para a PetDetailsScreen
        Navigator.pushNamed(
          context,
          '/petDetails',
          arguments: {
            'petName': petName, // Nome do pet
            'imagePath': imagePath, // Caminho da imagem do pet
          },
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Exibe a imagem fornecida pelo imagePath
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imagePath,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    petName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('2 anos, 7kg'), // Informações adicionais do pet
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
