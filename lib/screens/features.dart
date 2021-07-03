import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mop_website/widgets/centeredView.dart';
import 'package:mop_website/widgets/hexcolor.dart';

class Features extends StatelessWidget {
  const Features({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: AutoSizeText(
              'Some of Our Features which makes us stand out from the rest',
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700, fontSize: 55),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Image.asset('assets/images/features_bg.png')),
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildContainer(
                          'f1',
                          'High Performance',
                          'At MOP, a good combination of experienced hands, Standardized processes, usage of genuine parts and advanced diagnostic equipments will keep your car zooming at peak performance.\n30 days post service guarantee is assured when you service your car with us.',
                          context),
                      buildContainer(
                          'f2',
                          'Fast Service',
                          'We value our customers time and whether its a minimal service as car wash or a whole car modification, its our obligation to keep our word so you can be rest assured that the service will be done in the time slot allotted for your car service',
                          context),
                      buildContainer(
                          'f3',
                          'Affordable Range',
                          'With great service comes reasonable prices.\nRate of prices will fluctuate according to the service or the car or the type of parts you might require, but at MOP, you can avail cashbacks and discounts on offers as well as buy accessories with MOP money and unlock free services\nSo its a win-win!',
                          context),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildContainer(
                          'f4',
                          '24/7 Support',
                          'Along with our impeccable services we also provide you with 24/7 roadside assistance as well as a dedicated Service Buddy just for your needs!\nWe are always available to clarify your enquires and specific support for your vehicle service.\nEverything you want to know at your fingertips!',
                          context),
                      buildContainer(
                          'f5',
                          'Seasoned Mechanics',
                          'We make sure that only qualified and experienced mechanics will handle your servicing as our main objective is to keep you driving safely on road and to prevent any future problems with your vehicle. Our technicians adhere to the highest standard in Excellent automotive service',
                          context),
                      buildContainer(
                          'f6',
                          'Professional Work',
                          'Modern cars are much more technically advanced which require professional and experienced mechanics, therefore, MOP service centers are fitted with high class equipment and technology under a team of professional individuals who are trained to cater to your car needs specifically with a golden touch',
                          context),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Container buildContainer(icon, title, desc, context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: HexColor('#002F3A'),
        ),
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width / 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                // ImageIcon(AssetImage('assets/images/' + icon + '.png')),
                Image.asset(
                  'assets/images/' + icon + '.png',
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                SizedBox(
                  width: 10,
                ),
                AutoSizeText(
                  title,
                  maxLines: 1,
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ],
            ),
            AutoSizeText(
              desc,
              maxLines: 7,
              style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: Colors.white),
            )
          ],
        ));
  }
}
