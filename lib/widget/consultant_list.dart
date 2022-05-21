import 'package:flutter/material.dart';

class ConsultantList extends StatelessWidget {
  final IconData logoicon;
  final String title;
  final String subtitle;
  final Color backgroundcolor;
  const ConsultantList(
      {Key? key,
      required this.logoicon,
      required this.title,
      required this.subtitle,
      this.backgroundcolor = Colors.blue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      height: 80,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                decoration: BoxDecoration(
                    color: backgroundcolor,
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(16),
                child: Icon(
                  logoicon,
                  color: Colors.white,
                )),
          ),
          SizedBox(
            width: 220,
            child: Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const Icon(Icons.more_horiz)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
