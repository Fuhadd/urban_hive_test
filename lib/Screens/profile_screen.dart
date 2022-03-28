import 'package:flutter/material.dart';
import 'package:urban_hive_test/Helpers/constants.dart';
import 'package:urban_hive_test/Widgets/navigation_drawer.dart';
import 'package:urban_hive_test/Widgets/non_included_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NonIncludedScreen(
      pageIndex: 4,
      apparTitle: 'Profile',
      mainText: 'Profile Screen',
    );
  }
}
