// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'company.dart';

class CompanyDetailsScreen extends StatelessWidget {
  final Company company;

  const CompanyDetailsScreen({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2DCD6),
        title: Text(
          company.name,
          style: const TextStyle(
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
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(company.logoUrl),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(35.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF2DCD6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                company.description1,
                style: const TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF2DCD6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                company.description2,
                style: const TextStyle(
                  fontSize: 19,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
