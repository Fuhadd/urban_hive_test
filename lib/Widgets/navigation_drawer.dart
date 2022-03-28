import 'package:flutter/material.dart';
import 'package:urban_hive_test/Helpers/constants.dart';
import 'package:urban_hive_test/Screens/candidate_screen.dart';
import 'package:urban_hive_test/Screens/dev_screen.dart';
import 'package:urban_hive_test/Screens/home_page.dart';
import 'package:urban_hive_test/Screens/inbox_screen.dart';
import 'package:urban_hive_test/Screens/matches_screen.dart';
import 'package:urban_hive_test/Screens/profile_screen.dart';

class NavigationDrawer extends StatelessWidget {
  final int pageIndex;
  const NavigationDrawer({Key? key, required this.pageIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context, pageIndex),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.3,
    decoration: const BoxDecoration(
        image:
            const DecorationImage(image: AssetImage('assets/images/Logo.png'))),
  );
// //
}

class SideMenus extends StatelessWidget {
  SideMenus({
    this.padding = 16,
    this.color = Colors.white,
    required this.onClick,
    required this.icon,
    required this.title,
    //required onClick,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String title;
  double padding;
  Color color;
  VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: padding),
      leading: Icon(
        icon,
        //Icons.home_outlined,
        color: color,
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline3!
            .copyWith(fontWeight: FontWeight.bold, color: color),
      ),
      onTap: onClick,
    );
  }
}

Widget buildMenuItems(BuildContext context, int pageIndex) {
  return Column(
    children: [
      SideDivider(),
      SideMenus(
          color: pageIndex == 1
              ? const Color.fromRGBO(255, 189, 89, 1)
              : Colors.white,
          icon: Icons.home_outlined,
          title: 'HOME',
          onClick: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          }),
      SideDivider(),
      SideMenus(
          color: pageIndex == 2
              ? const Color.fromRGBO(255, 189, 89, 1)
              : Colors.white,
          icon: Icons.book_outlined,
          title: 'BOOK DEV',
          onClick: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const DevScreen(),
              ),
            );
          }),
      SideDivider(),
      SideMenus(
          color: pageIndex == 3
              ? const Color.fromRGBO(255, 189, 89, 1)
              : Colors.white,
          icon: Icons.nature_people_outlined,
          title: 'MATCH',
          onClick: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const MatchesScreen(),
              ),
            );
          }),
      SideMenus(
          color: pageIndex == 4
              ? const Color.fromRGBO(255, 189, 89, 1)
              : Colors.white,
          icon: Icons.person_outline_outlined,
          title: 'My Profile',
          padding: 40,
          onClick: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            );
          }),
      SideMenus(
          color: pageIndex == 5
              ? const Color.fromRGBO(255, 189, 89, 1)
              : Colors.white,
          icon: Icons.people_outlined,
          title: 'Candidates',
          padding: 40,
          onClick: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const CandidateScreen(),
              ),
            );
          }),
      SideMenus(
          color: pageIndex == 6
              ? const Color.fromRGBO(255, 189, 89, 1)
              : Colors.white,
          icon: Icons.message_outlined,
          title: 'Inbox',
          padding: 40,
          onClick: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const Inboxscreen(),
              ),
            );
          }),
      SideDivider(),
    ],
  );
}
