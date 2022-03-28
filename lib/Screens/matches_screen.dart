import 'package:flutter/material.dart';
import 'package:urban_hive_test/Widgets/navigation_drawer.dart';
import 'package:urban_hive_test/Widgets/non_included_screen.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NonIncludedScreen(
      pageIndex: 3,
      apparTitle: 'Matches',
      mainText: 'Matches Screen',
    );
  }
}
