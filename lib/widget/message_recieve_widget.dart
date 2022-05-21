import 'package:flutter/material.dart';

class MessageRecieve extends StatelessWidget {
  final String icon;
  final String message;
  final String time;
  const MessageRecieve(
      {Key? key, this.icon = "", required this.message, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 50, left: 25),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
                bottomRight: Radius.circular(14)),
            color: Color.fromARGB(255, 228, 238, 243)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                message,
                style: const TextStyle(fontSize: 16),
              ),
              Text(time, style: const TextStyle(fontSize: 12))
            ],
          ),
        ),
      ),
    );
  }
}
