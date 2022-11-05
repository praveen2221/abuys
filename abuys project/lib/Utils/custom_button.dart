import 'package:flutter/material.dart';

Widget customButton({
  required String title,
  required VoidCallback onClick,
}) {
  return SizedBox(
    width: 100,
    child: ElevatedButton(
      onPressed: onClick,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(title),
        ],
      ),
    ),
  );
}