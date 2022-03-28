import 'package:flutter/material.dart';
import 'package:urban_hive_test/Widgets/navigation_drawer.dart';
import 'package:urban_hive_test/Widgets/non_included_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NonIncludedScreen(
      pageIndex: 1,
      apparTitle: 'Home',
      mainText: 'Home Page',
    );
  }
}
