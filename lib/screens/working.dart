import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mop_website/widgets/hexcolor.dart';

class Working extends StatelessWidget {
  const Working({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset('assets/images/working_bg.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: Column(
              children: [
                AutoSizeText(
                  'How do we function as a team and how does MOP work?',
                  maxLines: 2,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700, fontSize: 50),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Text('01',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 150,
                                      color: HexColor("#04A1C6"))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                ),
                                AutoSizeText(
                                  'Select your Vehicle service ',
                                  maxLines: 1,
                                  style: GoogleFonts.rubik(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w500),
                                ),
                                AutoSizeText(
                                  'We have partnered with Authorized and Unauthorized service centers to customize our services as per your need',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400),
                                ),
                                AutoSizeText(
                                  'Choose your service and search for nearby service centers',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/images/working_1.png'))
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset('assets/images/working_2.png'),
                      ),
                      Expanded(
                        flex: 2,
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Text('01',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 150,
                                      color: HexColor("#04A1C6"))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                ),
                                AutoSizeText(
                                  'Select your Vehicle service ',
                                  maxLines: 1,
                                  style: GoogleFonts.rubik(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w500),
                                ),
                                AutoSizeText(
                                  'We have partnered with Authorized and Unauthorized service centers to customize our services as per your need',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400),
                                ),
                                AutoSizeText(
                                  'Choose your service and search for nearby service centers',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Text('01',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 150,
                                      color: HexColor("#04A1C6"))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                ),
                                AutoSizeText(
                                  'Select your Vehicle service ',
                                  maxLines: 1,
                                  style: GoogleFonts.rubik(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w500),
                                ),
                                AutoSizeText(
                                  'We have partnered with Authorized and Unauthorized service centers to customize our services as per your need',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400),
                                ),
                                AutoSizeText(
                                  'Choose your service and search for nearby service centers',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/images/working_3.png'))
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset('assets/images/working_4.png'),
                      ),
                      Expanded(
                        flex: 2,
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Text('01',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 150,
                                      color: HexColor("#04A1C6"))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                ),
                                AutoSizeText(
                                  'Select your Vehicle service ',
                                  maxLines: 1,
                                  style: GoogleFonts.rubik(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w500),
                                ),
                                AutoSizeText(
                                  'We have partnered with Authorized and Unauthorized service centers to customize our services as per your need',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400),
                                ),
                                AutoSizeText(
                                  'Choose your service and search for nearby service centers',
                                  style: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
