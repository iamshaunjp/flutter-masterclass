import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {

  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }
  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            Text('$strength'),
            Image.asset('assets/img/coffee_bean.png',
              width: 25,
              colorBlendMode: BlendMode.multiply,
              color: Colors.brown[100],
            ),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: const Text('+'),
            ),
          ]
        ),
        Row(
          children: [
            const Text('Sugars: '),
            Text('$sugars'),
            Image.asset('assets/img/sugar_cube.png',
              width: 25,
              colorBlendMode: BlendMode.multiply,
              color: Colors.brown[100],
            ),
            const Expanded(child: SizedBox()),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.brown,
              ),
              onPressed: increaseSugars,
              child: const Text('+'),
            ),
          ]
        ),
      ]
    );
  }
}