import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  void increaseStrength() {
    print('inc strength by 1');
  }
  void increaseSugars() {
    print('inc sugars by 1');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            const Text('3'),
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
            const Text('3'),
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