import 'package:flutter/material.dart';
import 'package:healthui1/widget/emoticon_face.dart';
import 'package:healthui1/widget/excercises_list.dart';

import '../widget/icon_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi, Mahdere!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "22 Sep, 2022",
                            style: TextStyle(
                                color: Colors.blue[200], fontSize: 16),
                          )
                        ],
                      ),
                      const IconWidget(icon: Icons.notifications)
                    ],
                  ),

                  //Searchbar

                  Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: const Center(
                            child: TextField(
                              textInputAction: TextInputAction.search,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ))),
                  const SizedBox(height: 25),

                  //How do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      EmoticonFace(emoticonFace: "????", emoticonText: "Badly"),
                      EmoticonFace(emoticonFace: "????", emoticonText: "Fine"),
                      EmoticonFace(emoticonFace: "????", emoticonText: "Well"),
                      EmoticonFace(
                          emoticonFace: "????", emoticonText: "Excellent"),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  child: Container(
                    color: Colors.grey[200],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25, top: 35, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Excercises",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              left: 40,
                              right: 40,
                              top: 20,
                            ),
                            child: Column(
                              children: const [
                                ExcercisesList(
                                  logoicon: Icons.favorite,
                                  title: "Speaking skills",
                                  subtitle: "16 excercises",
                                  backgroundcolor: Colors.orange,
                                ),
                                ExcercisesList(
                                    logoicon: Icons.person,
                                    title: "Reading speed",
                                    subtitle: "8 excercises"),
                                ExcercisesList(
                                    logoicon: Icons.person,
                                    title: "Reading speed",
                                    subtitle: "8 excercises"),
                                ExcercisesList(
                                    logoicon: Icons.person,
                                    title: "Reading speed",
                                    subtitle: "8 excercises"),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
