import 'package:flutter/material.dart';
import 'HistoryScreen.dart';
import 'WorksScreen.dart';
import 'CompaniesScreen.dart';
import 'CharactersScreen.dart';

// Classe para armazenar os dados da tela inicial
class AppData {
  final String title;
  final List<ButtonData> buttons;

  AppData(this.title, this.buttons);
}

class ButtonData {
  final String label;
  final String route;

  ButtonData(this.label, this.route);
}

// Instanciando os dados
final appData = AppData(
  'APP - Yoko Shimomura',
  [
    ButtonData('Historia', '/historia'),
    ButtonData('Trabalhos', '/trabalhos'),
    ButtonData('Empresas', '/empresas'),
    ButtonData('Descrição Personagens', '/descricao_personagens'),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Yoko Shimomura',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const HomeScreen(),
      routes: {
        // Aqui você pode definir as rotas para as outras telas
        '/historia': (context) => const HistoryScreen(),
        '/trabalhos': (context) => const WorksScreen(),
        '/empresas': (context) => const CompaniesScreen(),
        '/descricao_personagens': (context) => const CharactersScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2DCD6),
        title: Text(appData.title, style: const TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.home, color: Color(0xFFD9B4AA)),
            onPressed: () {
              // Ação do ícone de casa
            },
          ),
        ],
      ),
      body: Container(
        color: const Color(0xFFF3EFEC),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: appData.buttons.map((buttonData) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, buttonData.route);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2DCD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  ),
                  child: Text(
                    buttonData.label,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
