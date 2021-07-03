import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'screens/contact.dart';
import 'screens/faq.dart';
import 'screens/features.dart';
import 'screens/home.dart';
import 'screens/join.dart';
import 'screens/mop_luxury.dart';
import 'screens/services.dart';
import 'widgets/hexcolor.dart';
import 'widgets/navigation_bar.dart';
import 'screens/note.dart';
import 'screens/reviews.dart';
import 'screens/working.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:
            Theme.of(context).textTheme.apply(bodyColor: HexColor("#002F3A")),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

AutoScrollController controller;

class _MyHomePageState extends State<MyHomePage> {
  final scrollDirection = Axis.vertical;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: scrollDirection,
        controller: controller,
        children: [
          NavigationBar(),
          HomePage(),
          Working(),
          Note(),
          Services(),
          Features(),
          MopLuxury(),
          Join(),
          Faq(),
          Reviews(),
          Contact(),
        ],
      ),
    );
  }
}

Future _scrollToIndex(index) async {
  await controller.scrollToIndex(index,
      preferPosition: AutoScrollPosition.begin);
}

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
  final index;
  const NavBarItem({key, this.title, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(title,
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500, color: Colors.white)),
    );
  }
}
