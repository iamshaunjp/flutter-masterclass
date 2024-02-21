import 'package:flutter/material.dart';
import 'package:flutter_masterclass/screens/create/create.dart';
import 'package:flutter_masterclass/screens/home/home.dart';
import 'package:flutter_masterclass/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: primaryTheme,
    home: const Create(),
  ));
}

// sandbox
class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: const Text('sandbox'),
    );
  }
}