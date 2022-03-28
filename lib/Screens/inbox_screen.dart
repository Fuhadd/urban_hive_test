import 'package:flutter/material.dart';
import 'package:urban_hive_test/Helpers/constants.dart';
import 'package:urban_hive_test/Models/models.dart';
import 'package:urban_hive_test/Widgets/constant_widget.dart';
import 'package:urban_hive_test/Widgets/navigation_drawer.dart';

class Inboxscreen extends StatelessWidget {
  const Inboxscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawer(
          pageIndex: 6,
        ),
        appBar: MessageAppar(context, 'Messages', User.users[0].imageUrl),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: ListTile(
                      horizontalTitleGap: 40,
                      contentPadding: EdgeInsets.all(10),

                      title: SubTitleText(
                          title: Conversation.conversations[index].name),
                      //Text(Conversation.conversations[index].name),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            Conversation.conversations[index].imageUrl),
                      ),
                      subtitle: Text(Conversation.conversations[index].content),
                      trailing:
                          Text(Conversation.conversations[index].duration),
                    ),
                  ),
                );
              }),
        ));
  }
}
