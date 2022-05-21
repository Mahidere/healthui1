import 'package:flutter/material.dart';
import 'package:healthui1/pages/dashboard.dart';
import 'package:healthui1/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  List pages = [
    const HomePage(),
    const Dashboard(),
    const Text("message"),
    const Text("hi")
  ];

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'dashboard'),
            BottomNavigationBarItem(icon: Icon(Icons.email), label: 'message'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          ]),
    );
  }
}
