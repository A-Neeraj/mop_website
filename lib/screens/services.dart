import 'package:auto_size_text/auto_size_text.dart';
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
          AutoSizeText('TOP Services that are open for customers'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer('card', 'Car Detailing'),
              buildContainer('fwash', 'Full Wash'),
              buildContainer('cwork', 'Custom Work'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer('tirer', 'Tire Replacement'),
              buildContainer('bassist', 'Breakdown Assist'),
              buildContainer('acserv', 'A/C Services'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer('vinspec', 'Vehicle Inspection'),
              buildContainer('pandd', 'Painting and Denting'),
              buildContainer('wschanging', 'WindSield Change'),
            ],
          ),
        ],
      )),
    );
  }

  Container buildContainer(imagename, text) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/' + imagename + '.png',
            fit: BoxFit.contain,
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
