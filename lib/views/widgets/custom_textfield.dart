import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.radius = 10, this.linearGradient});
  final double radius;
  final LinearGradient? linearGradient;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(radius),
          gradient: linearGradient),
      child: const TextField(),
    );
  }
}
