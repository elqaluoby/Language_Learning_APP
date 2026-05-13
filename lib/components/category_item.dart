import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    this.text,
    this.color,
    this.onTap,
  });

  final String? text;
  final Color? color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 80,
        width: double.infinity,

        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),

        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}