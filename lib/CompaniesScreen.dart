// ignore_for_file: file_names, duplicate_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/CompanyDetailsScreen.dart';
import 'company.dart';
import 'WorksScreen.dart';

class CompaniesScreen extends StatelessWidget {
  const CompaniesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2DCD6),
        title: const Text(
          'Empresas',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.home, color: Color(0xFFD9B4AA)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: const Color(0xFFF3EFEC),
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const Text(
              'Empresas em que Yoko Shimomura trabalhou:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CompanyDetailsScreen(company: capcom)),
                );
              },
              child: Image.asset(capcom.logoUrl),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CompanyDetailsScreen(company: squareEnix)),
                );
              },
              child: Image.asset(squareEnix.logoUrl),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WorksScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF2DCD6),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              ),
              child: const Text(
                'Jogos',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 30), // Espaço extra no final
          ],
        ),
      ),
    );
  }
}