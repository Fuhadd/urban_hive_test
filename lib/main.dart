import 'package:flutter/material.dart';
import 'package:urban_hive_test/Helpers/theme.dart';
import 'package:urban_hive_test/Screens/candidate_screen.dart';
import 'package:urban_hive_test/Screens/dev_screen.dart';
import 'package:urban_hive_test/Screens/home_page.dart';
import 'package:urban_hive_test/Screens/inbox_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: DevScreen(),
      //HomePage(),
    );
  }
}
