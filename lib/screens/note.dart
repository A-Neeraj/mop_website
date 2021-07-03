import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mop_website/widgets/centeredView.dart';
import 'package:mop_website/widgets/hexcolor.dart';

class Note extends StatelessWidget {
  const Note({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: Colors.pinkAccent[100],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'Note*: ',
              maxLines: 1,
              style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 25),
            ),
            Expanded(
              child: AutoSizeText(
                'We are currently open offline so feel free to reach out to us and give your car the care it deserves. \nJust give a ring to 521-2156-2347 and we will take care of the rest for you.',
                maxLines: 3,
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
