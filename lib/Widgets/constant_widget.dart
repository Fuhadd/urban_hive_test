import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            )));
  }
}

class BodyText extends StatelessWidget {
  final String title;
  Color? color;
  BodyText({
    required this.title,
    this.color = Colors.black,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 12, fontWeight: FontWeight.normal, color: color),
            )));
  }
}

class SubTitleText extends StatelessWidget {
  final String title;
  FontWeight? fontWeight;
  SubTitleText({
    required this.title,
    this.fontWeight = FontWeight.bold,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontSize: 20, fontWeight: fontWeight),
            )));
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(5)),
      //width: 60,
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
    );
  }
}
