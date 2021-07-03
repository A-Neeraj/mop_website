import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mop_website/widgets/centeredView.dart';

class Services extends StatelessWidget {
  const Services({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: CenteredView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AutoSizeText(
            'TOP Services that are open for customers',
            maxLines: 1,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700, fontSize: 55, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer('card', 'Car Detailing', context),
              buildContainer('fwash', 'Full Wash', context),
              buildContainer('cwork', 'Custom Work', context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer('tirer', 'Tire Replacement', context),
              buildContainer('bassist', 'Breakdown Assist', context),
              buildContainer('acserv', 'A/C Services', context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer('vinspec', 'Vehicle Inspection', context),
              buildContainer('pandd', 'Painting and Denting', context),
              buildContainer('wschanging', 'WindSield Change', context),
            ],
          ),
        ],
      )),
    );
  }

  Container buildContainer(imagename, text, context) {
    return Container(
      // height: 150,
      width: MediaQuery.of(context).size.width / 5,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/' + imagename + '.png',
            fit: BoxFit.fitHeight,
          ),
          Center(
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
