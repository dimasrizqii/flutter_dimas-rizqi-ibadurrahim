import 'package:flutter/material.dart';
import 'package:project/page/home_page.dart';

void main() {
  runApp(const CodeCompetence());
}

class CodeCompetence extends StatefulWidget {
  const CodeCompetence({super.key});

  @override
  State<CodeCompetence> createState() => _CodeCompetenceState();
}

class _CodeCompetenceState extends State<CodeCompetence> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Code Competence 2',
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomePage(title: 'Code Competence 2'),
    );
  }
}
