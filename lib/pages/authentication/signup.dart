import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                        height: 220,
                        width: double.infinity,
                        child:
                            Image(image: AssetImage("assets/img/health1.png"))),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 25),
                      child: Row(
                        children: const [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                                //color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Center(
                            child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.blue[800],
                                ),
                                hintText: "Email",
                              ),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Center(
                            child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.blue[800],
                                ),
                                hintText: "Full name",
                              ),
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Center(
                            child: TextField(
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock,
                                    color: Colors.blue[800],
                                  ),
                                  hintText: "Password"),
                              obscureText: true,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Center(
                            child: TextField(
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock,
                                    color: Colors.blue[800],
                                  ),
                                  hintText: "Confirm Password"),
                              obscureText: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an acount?"),
                  const SizedBox(width: 8),
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.blue[800]),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
