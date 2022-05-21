import 'package:flutter/material.dart';
import 'package:healthui1/widget/message_recieve_widget.dart';
import 'package:healthui1/widget/message_send_widget.dart';

import '../widget/icon_widget.dart';

class IndevidualMessage extends StatefulWidget {
  const IndevidualMessage({Key? key}) : super(key: key);

  @override
  State<IndevidualMessage> createState() => _IndevidualMessageState();
}

class _IndevidualMessageState extends State<IndevidualMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const IconWidget(icon: Icons.arrow_back),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Bobby Singer",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "online",
                            style: TextStyle(
                                color: Colors.blue[200], fontSize: 14),
                          )
                        ],
                      ),
                      const IconWidget(icon: Icons.call)
                    ],
                  ),

                  //Searchbar

                  const SizedBox(height: 10),

                  //How do you feel
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      width: double.maxFinite,
                      child: Column(
                        children: const [
                          SizedBox(height: 30),
                          //messages
                          MessageRecieve(
                              message: "Hi Jason! How are you?", time: "11:05"),
                          MessageSent(
                              message: "I'm good, Thanks! how are you",
                              time: "1:02"),
                          MessageRecieve(
                              message: "I'm great, Are you free today?",
                              time: "2:05"),
                          MessageSent(
                              message: "Nah I am free, Why do you ask?",
                              time: "12:01"),
                          MessageRecieve(
                              message: "I'm great, Are you free today?",
                              time: "2:05"),
                          MessageRecieve(
                              message: "I'm great, Are you free today?",
                              time: "2:05"),
                          MessageRecieve(
                              message: "I'm great, Are you free today?",
                              time: "2:05"),
                          MessageRecieve(
                              message: "I'm great, Are you free today?",
                              time: "2:05"),
                          MessageRecieve(
                              message: "I'm great, Are you free today?",
                              time: "2:05"),
                          MessageRecieve(
                              message: "I'm great, Are you free today?",
                              time: "2:05"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
