import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  const IconWidget({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(12),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
