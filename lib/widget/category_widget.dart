import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  const CategoryWidget(
      {Key? key, this.backgroundColor = Colors.blue, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: const Alignment(-2, -2),
                end: const Alignment(2, 2),
                colors: [Colors.white, backgroundColor, Colors.white]),
            borderRadius: BorderRadius.circular(12)),
        height: 70,
        width: 150,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
