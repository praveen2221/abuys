import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {Key? key,
      required this.onClick,
      required this.icon,
      required this.nameText,
      required this.color})
      : super(key: key);
  VoidCallback onClick;
  Icon icon;
  Widget nameText;
  Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.indigo[900], borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          contentPadding: EdgeInsets.only(left: 140),
          leading: CircleAvatar(
            child: icon,
          ),
          title: nameText,
          textColor: color,
        ),
      ),
    );
  }
}
