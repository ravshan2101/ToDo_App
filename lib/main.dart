import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do/pages/home_page.dart';
import 'package:to_do/pages/splash_page.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('ravshan');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      routes: {
        'home': (context) => HomePage(),
        'splash': (context) => SplashPage()
      },
      initialRoute: 'splash',
    );
  }
}
