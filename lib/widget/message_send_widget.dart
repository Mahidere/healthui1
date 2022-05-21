import 'package:flutter/material.dart';

class MessageSent extends StatelessWidget {
  final String icon;
  final String message;
  final String time;
  const MessageSent(
      {Key? key, this.icon = "", required this.message, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 25, left: 50),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
                bottomLeft: Radius.circular(14)),
            color: Colors.blue[800]),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(icon),
              SizedBox(
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      message,
                      style: TextStyle(color: Colors.grey[200], fontSize: 16),
                    ),
                    Text(time,
                        style: TextStyle(color: Colors.grey[200], fontSize: 12))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
