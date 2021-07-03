import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mop_website/widgets/centeredView.dart';

class MopLuxury extends StatelessWidget {
  const MopLuxury({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/mopl_bg.png',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        CenteredView(
          child: Column(
            children: [
              AutoSizeText('MOP Luxury',
                  style: TextStyle(
                      fontFamily: 'Copperplate',
                      color: Colors.white,
                      fontSize: 50)),
              AutoSizeText(
                'MOP Luxury is a special segment of our service that is curated entirely specific for your premium cars and bikes.',
                style: GoogleFonts.rubik(fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Image.asset('assets/images/bullet.png'),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        AutoSizeText('Highest Value Service',
                            style: TextStyle(
                                fontFamily: 'Copperplate',
                                color: Colors.white,
                                fontSize: 20)),
                        AutoSizeText(
                            'Your vehicles will be serviced in State of the art workshops with only seasoned mechanics using superior and genuine products as well as the most safest and effective methods')
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
