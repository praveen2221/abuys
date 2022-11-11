import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  customButton(
      {Key? key,
      required this.onClick,
      required this.title,
      required this.color})
      : super(key: key);
  VoidCallback onClick;
  Widget title;
  Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.indigo[900], borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          title: title,
          textColor: color,
        ),
      ),
    );
  }
}
