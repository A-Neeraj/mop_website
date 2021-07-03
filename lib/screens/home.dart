import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 100,
                  child: Image.asset(
                    'assets/images/home_car.png',
                    fit: BoxFit.fill,
                  )),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height - 100,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/home_logo.png',
                        scale: 1.5,
                      ),
                      AutoSizeText('MOTORVEHICLES. OUR PRIORITY',
                          maxLines: 2,
                          style: TextStyle(
                              fontFamily: 'Copperplate',
                              color: Colors.white,
                              fontSize: 50)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100.0),
                        child: AutoSizeText(
                          '"Building world class service station for cars and bikes"',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 60),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10.0, left: 20.0, right: 30.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'BRAND NEW SERVICE STATION TO BLOW YOUR MIND ',
                              maxLines: 1,
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            AutoSizeText(
                              'Welcome to MOP!\nStrap in to uncover the new efficient way of caring for your beloved car or bike. ',
                              maxLines: 3,
                              style: GoogleFonts.rubik(
                                  fontSize: 35, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            AutoSizeText(
                              'We have made new ways to care for your car that will change the way you live',
                              maxLines: 1,
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/in_car.png',
                        height: 300,
                      )
                    ],
                  ),
                  AutoSizeText(
                    'WHO ARE WE? ',
                    maxLines: 1,
                    style: GoogleFonts.rubik(
                        fontSize: 35, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AutoSizeText(
                    'MOP services concept was developed by Nexisersoftech  Pvt.  Ltd.  INDIA to give our Automobile community  a new definition for car and bike service stations professionally.\nJust as our motto in MOP ( Motorvehicles. Our Priority) we strive for nothing less than excellence for your beloved automobiles with no limitations to any models or types or the number of wheels on them.',
                    maxLines: 4,
                    style: GoogleFonts.rubik(
                        fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
