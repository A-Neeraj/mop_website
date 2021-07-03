import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/images/logo.png'),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavBarItem(title: 'HOME'),
                // SizedBox(
                //   width: 60,
                // ),
                NavBarItem(title: 'WORKING'),
                // SizedBox(
                //   width: 60,
                // ),
                NavBarItem(title: 'SERVICES'),
                // SizedBox(
                //   width: 60,
                // ),
                NavBarItem(title: 'FEATURES'),
                // SizedBox(
                //   width: 60,
                // ),
                NavBarItem(title: 'MOP LUXURY'),
                // SizedBox(
                //   width: 60,
                // ),
                NavBarItem(title: 'FAQ'),
                // SizedBox(
                //   width: 60,
                // ),
                NavBarItem(title: 'REVIEWS'),
                // SizedBox(
                //   width: 60,
                // ),
                NavBarItem(title: 'CONTACT US'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem({key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500, color: Colors.white));
  }
}
