import 'package:flutter/material.dart';

import '../widget/category_widget.dart';
import '../widget/consultant_list.dart';
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
                  const SizedBox(height: 15),

                  //How do you feel
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
                        //category
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25, top: 35, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Category",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  CategoryWidget(
                                    text: "Relationship",
                                    backgroundColor: Colors.purple,
                                  ),
                                  CategoryWidget(text: "Career")
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  CategoryWidget(
                                    text: "Education",
                                    backgroundColor: Colors.orange,
                                  ),
                                  CategoryWidget(
                                    text: "Other",
                                    backgroundColor: Colors.red,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        //Consultant
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25, top: 35, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Consultant",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.more_horiz),
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
                                ConsultantList(
                                  logoicon: Icons.favorite,
                                  title: "Speaking skills",
                                  subtitle: "16 excercises",
                                  backgroundcolor: Colors.orange,
                                ),
                                ConsultantList(
                                  logoicon: Icons.favorite,
                                  title: "Speaking skills",
                                  subtitle: "16 excercises",
                                  backgroundcolor: Colors.orange,
                                ),
                                ConsultantList(
                                  logoicon: Icons.favorite,
                                  title: "Speaking skills",
                                  subtitle: "16 excercises",
                                  backgroundcolor: Colors.orange,
                                ),
                                ConsultantList(
                                  logoicon: Icons.favorite,
                                  title: "Speaking skills",
                                  subtitle: "16 excercises",
                                  backgroundcolor: Colors.orange,
                                ),
                                ConsultantList(
                                  logoicon: Icons.favorite,
                                  title: "Speaking skills",
                                  subtitle: "16 excercises",
                                  backgroundcolor: Colors.orange,
                                ),
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
