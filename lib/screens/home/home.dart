import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Characters'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('character list'),
            Text('character list', style: Theme.of(context).textTheme.headlineMedium),
            Text('character list', style: Theme.of(context).textTheme.titleMedium),
            
            FilledButton(
              onPressed: () {
                // navigate to the create screen
              },
              child: const Text('Create New'),
            ),
          ]
        ),
      ),
    );
  }
}