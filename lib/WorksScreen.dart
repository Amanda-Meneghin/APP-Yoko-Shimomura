// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

// Classe para armazenar os dados dos trabalhos
class Work {
  final String title;
  final String description;
  final String company;
  final String releaseDate;
  final String platform;
  final String imageUrl;

  Work({
    required this.title,
    required this.description,
    required this.company,
    required this.releaseDate,
    required this.platform,
    required this.imageUrl,
  });
}

// Lista de trabalhos
final worksList = [
  Work(
    title: 'Final Fantasy XV',
    description:
        'A história de Final Fantasy XV é a história de Noctis. Noctis é o príncipe do reino de Lucis. Ele é prometido em casamento a Luna. Ele é enviado para encontrar sua futura noiva com seus três melhores amigos – Prompto, Fladio e Ignis.',
    company: 'Square Enix',
    releaseDate: '29/11/2016',
    platform: 'PlayStation 4, MAIS',
    imageUrl: 'assets/FinalFantasy.jpeg', 
  ),
  Work(
    title: 'Kingdom Hearts',
    description:
        'Kingdom Hearts nasceu essencialmente como um Crossover entre Disney e Final Fantasy. Mais tarde, personagens de outras franquias da Square fizeram aparição na franquia, não se limitando mais apenas em Final Fantasy.',
    company: 'Square Enix',
    releaseDate: '28/03/2002',
    platform: 'PlayStation 2',
    imageUrl: 'assets/KingdomHearts.jpeg',
  ),
  Work(
    title: 'Street Fighter II',
    description:
        '"Street Fighter" foi o precursor dos jogos de luta e introduziu elementos que se tornariam fundamentais para o gênero. Desenvolvido pela Capcom, o jogo permitiu aos jogadores escolher entre Ryu e Ken, dois lutadores com estilos de artes marciais distintos.',
    company: 'Capcom',
    releaseDate: 'Fevereiro de 1991',
    platform: 'SuperNintendo, MAIS',
    imageUrl: 'assets/StreetFighter.jpeg',
  ),
  Work(
    title: 'Parasite Eve',
    description:
        'A história segue uma policial de Nova York inteligente, nipo-americana chamada Aya Brea, e sua luta contra um antigo mal chamado "Eve", que ameaça a humanidade e toda a vida na Terra.',
    company: 'Square Enix',
    releaseDate: '29/03/1998',
    platform: 'PlayStation',
    imageUrl: 'assets/ParasiteEve.jpeg',
  ),
  Work(
    title: 'Legend of Mana',
    description:
        'Legend of Mana é um jogo eletrônico do gênero RPG. O jogo possibilita a escolha de um personagem masculino ou feminino e possui vários personagens espalhados pelo mundo do jogo.',
    company: 'Square Enix',
    releaseDate: '15/07/1999',
    platform: 'Nintendo Switch, MAIS',
    imageUrl: 'assets/LegenfOfMana.jpeg',
  ),
];

class WorksScreen extends StatefulWidget {
  const WorksScreen({super.key});

  @override
  
  _WorksScreenState createState() => _WorksScreenState();
}

class _WorksScreenState extends State<WorksScreen> {
  int currentIndex = 0;

  void nextWork() {
    setState(() {
      currentIndex = (currentIndex + 1) % worksList.length;
    });
  }

  void previousWork() {
    setState(() {
      currentIndex = (currentIndex - 1 + worksList.length) % worksList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentWork = worksList[currentIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2DCD6),
        title: const Text(
          'Trabalhos',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.home, color: Color(0xFFD9B4AA)),
          onPressed: () {
            Navigator.pop(context); // Volta para a tela inicial
          },
        ),
      ),
      body: Container(
        color: const Color(0xFFF3EFEC),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Color(0xFFD9B4AA)),
                  onPressed: previousWork,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2DCD6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Image.asset(currentWork.imageUrl),
                        const SizedBox(height: 10),
                        Text(
                          currentWork.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          currentWork.description,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Empresa Criadora: ${currentWork.company}',
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Ano de Lançamento: ${currentWork.releaseDate}',
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'Plataforma: ${currentWork.platform}',
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward, color: Color(0xFFD9B4AA)),
                  onPressed: nextWork,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
