import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Widget horizontalSpacer(double width) {
  return SizedBox(
    width: width,
  );
}

Widget verticalSpacer(double height) {
  return SizedBox(
    height: height,
  );
}

PreferredSizeWidget CustomAppar(
  BuildContext context,
  String appBarTitle,
) {
  return AppBar(
    iconTheme: const IconThemeData(color: Colors.black, size: 35),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      appBarTitle,
      style:
          Theme.of(context).textTheme.headline2!.copyWith(color: Colors.black),
    ),
  );
}

PreferredSizeWidget MessageAppar(
  BuildContext context,
  String appBarTitle,
  String imageUrl,
) {
  return AppBar(
    actions: [
      CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      horizontalSpacer(10)
    ],
    iconTheme: const IconThemeData(color: Colors.black, size: 35),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      appBarTitle,
      style:
          Theme.of(context).textTheme.headline2!.copyWith(color: Colors.black),
    ),
  );
}

Divider SideDivider() {
  return const Divider(
    endIndent: 15,
    indent: 15,
    color: Colors.white70,
  );
}

Divider mainDivider() {
  return const Divider(
    // endIndent: 0,
    // indent: 0,
    color: Colors.black87,
  );
}

var options = const [
  FormBuilderFieldOption(
    value: 'Monday',
    child: Text(
      'M',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
  FormBuilderFieldOption(
    value: 'Tuesday',
    child: Text(
      'T',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
  FormBuilderFieldOption(
    value: 'Wednesday',
    child: Text(
      'W',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
  FormBuilderFieldOption(
    value: 'Thursday',
    child: Text(
      'Th',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
  FormBuilderFieldOption(
    value: 'Friday',
    child: Text(
      'F',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
];

FormBuilderRadioGroup customFormBuilderRadioGroup(
  String name,
  String? initialValue,
) {
  return FormBuilderRadioGroup(
    activeColor: Colors.black,
    wrapAlignment: WrapAlignment.spaceBetween,
    decoration: const InputDecoration(
      border: InputBorder.none,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
    ),
    name: name,
    options: options,
    controlAffinity: ControlAffinity.trailing,
    initialValue: initialValue,
  );
}

FormBuilderChoiceChip customFormBuilderChoiceChip(
  BuildContext context,
  String name,
) {
  return FormBuilderChoiceChip(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
    alignment: WrapAlignment.spaceBetween,
    runSpacing: 5,
    spacing: 5,
    backgroundColor: Colors.black,
    labelStyle:
        Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
    labelPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    name: name,
    options: timeoptions,
    decoration: const InputDecoration(border: InputBorder.none),
    //padding: EdgeInsets.all(90),
  );
}

var timeoptions = const [
  FormBuilderFieldOption(
    value: '9:00',
    child: Text(
      '9:00',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
  FormBuilderFieldOption(
    value: '10:00',
    child: Text(
      '10:00',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
  FormBuilderFieldOption(
    value: '11:00',
    child: Text(
      '11:00',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
  FormBuilderFieldOption(
    value: '12:00',
    child: Text(
      '12:00',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
  FormBuilderFieldOption(
    value: '13:00',
    child: Text(
      '13:00',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
  FormBuilderFieldOption(
    value: '14:00',
    child: Text(
      '14:00',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
  FormBuilderFieldOption(
    value: '15:00',
    child: Text(
      '15:00',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
  FormBuilderFieldOption(
    value: '16:00',
    child: Text(
      '16:00',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
  ),
];
