// ignore_for_file: file_names

import 'package:flutter/material.dart';

// Classe para armazenar os dados da tela de História
class HistoryData {
  final String name;
  final String biography;
  final String imageUrl;

  HistoryData(this.name, this.biography, this.imageUrl);
}

// Instanciando os dados para a tela de História
final historyData = HistoryData(
  'Yoko Shimomura',
  'Yoko Shimomura é uma compositora japonesa de trilhas sonoras para videogames. '
  'É descrita como "a mais famosa compositora de videogames do mundo". Ela trabalha '
  'na indústria de jogos desde sua graduação no Colégio de Música de Osaka em 1988.',
  'assets/Yoko.jpeg', 
);

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2DCD6),
        title: const Text(
          'Historia',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.home, color: Color(0xFFD9B4AA)),
          onPressed: () {
            Navigator.pop(context); // Volta para a tela anterior
          },
        ),
      ),
      body: Container(
        color: const Color(0xFFF3EFEC),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20), // Espaço entre o AppBar e a imagem
            CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage(historyData.imageUrl), 
            ),
            const SizedBox(height: 50), // Espaço entre a imagem e o contêiner
            Container(
              padding: const EdgeInsets.all(50.0),
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF2DCD6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    historyData.name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15), // Espaço entre o nome e o texto biográfico
                  Text(
                    historyData.biography,
                    style: const TextStyle(
                      fontSize: 21,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}