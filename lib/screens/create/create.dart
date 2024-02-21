import 'package:flutter/material.dart';
import 'package:flutter_masterclass/models/vocation.dart';
import 'package:flutter_masterclass/screens/create/vocation_card.dart';
import 'package:flutter_masterclass/shared/styled_button.dart';
import 'package:flutter_masterclass/shared/styled_text.dart';
import 'package:flutter_masterclass/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {

  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  @override
  void dispose() {
    // clean up the controller when the widget is disposed
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  // submit handler
  void handleSubmit() {
    if (_nameController.text.trim().isEmpty){
      // show error in dialog
      return;
    }
    if (_sloganController.text.trim().isEmpty){
      // show error in dialog
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Character Creation'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [

            // welcome message
            Center(
              child: Icon(Icons.code, color: AppColors.primaryColor),
            ),
            const Center(
              child: StyledHeading('Welcome, new player.'),
            ),
            const Center(
              child: StyledText('Create a name & slogan for your character.'),
            ),
            const SizedBox(height: 30),

            // input for name & slogan
            TextField(
              controller: _nameController,
              cursorColor: AppColors.textColor,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                label: StyledText('Character name'),
              ),
              style: GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _sloganController,
              cursorColor: AppColors.textColor,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.chat),
                label: StyledText('Character slogan'),
              ),
              style: GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 30),

            // select vocation title
            Center(
              child: Icon(Icons.code, color: AppColors.primaryColor),
            ),
            const Center(
              child: StyledHeading('Choose a Vocation.')
            ),
            const Center(
              child: StyledText('This determines your available skills.')
            ),
            const SizedBox(height:30),

            // vocation cards
            const VocationCard(
              vocation: Vocation.junkie, 
            ),
            const VocationCard(
              vocation: Vocation.ninja, 
            ),
            const VocationCard(
              vocation: Vocation.wizard, 
            ),
            const VocationCard(
              vocation: Vocation.raider, 
            ),

            // submit button
            Center(
              child: StyledButton(
                onPressed: handleSubmit, 
                child: const StyledHeading('Create Character'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}