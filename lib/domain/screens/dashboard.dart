import 'package:daily/domain/widgets/input_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Header(),
          ],
        ),
      )
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 4,
            child: Text('Daily', style: GoogleFonts.oswald(
              textStyle: const TextStyle(
                fontSize: 40
              )
            ),),
          ),
          Flexible(
            flex: 8,
            child: InputTextWidget(
              inputFontSize: 12,
              inputIcon: const Icon(Icons.search),
              inputFilledColor: const Color.fromARGB(20, 33, 149, 243),
              iconBtnOnPress: () {
                //! Not implemented yet
              },
            )
          )
        ],
      ),
    );
  }
}