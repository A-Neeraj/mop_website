import 'package:flutter/material.dart';
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
      ),
    );
  }
}
