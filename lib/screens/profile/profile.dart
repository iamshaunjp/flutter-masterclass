import 'package:flutter/material.dart';
import 'package:flutter_masterclass/shared/styled_text.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('character name')
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // basic info - image, vocation, description


            // weapon and ability


            // stats & skills


            // save button
            
          ],
        ),
      ),
    );
  }
}