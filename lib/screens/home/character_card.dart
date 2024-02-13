import 'package:flutter/material.dart';
import 'package:flutter_masterclass/theme.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final String character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Text(character),

            const Expanded(
              child: SizedBox(),
            ),
            
            IconButton(
              onPressed: () {
                // navigate to character profile screen
              },
              icon: Icon(Icons.arrow_forward, color: AppColors.textColor)
            ),
          ]
        ),
      ),
    );
  }
}