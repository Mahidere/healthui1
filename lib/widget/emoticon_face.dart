import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;
  final String emoticonText;

  const EmoticonFace(
      {Key? key, required this.emoticonFace, required this.emoticonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(12),
              child: Text(
                emoticonFace,
                style: const TextStyle(fontSize: 24),
              )),
          const SizedBox(
            height: 8,
          ),
          Text(
            emoticonText,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
