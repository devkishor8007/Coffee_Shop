import 'package:flutter/material.dart';

Widget buildChangeNumber({Icon icon}) {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(20)),
          minimumSize: Size(60, 60)),
      onPressed: () {},
      child: icon);
}
