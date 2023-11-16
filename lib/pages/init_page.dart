import 'package:flutter/material.dart';

class initPage extends StatefulWidget {
  const initPage({super.key});

  @override
  State<initPage> createState() => _initPageState();
}

class _initPageState extends State<initPage> {

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, 
          currentIndex: _currentIndex,
          onTap: (int value) {
            _currentIndex = value;
            setState(() {});
          },
          
          items: [
        BottomNavigationBarItem(
          label: "Principal",
          icon: Icon(
            Icons.home_filled,
          ),
        ),
        BottomNavigationBarItem(
          label: "Short",
          icon: Icon(
            Icons.play_arrow_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Container(
            margin: EdgeInsets.only(top: 4.0),
            child: const Icon(
              Icons.add_circle_outline,
              size: 35.0,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "Suscriptores",
          icon: Icon(
            Icons.subscriptions_rounded,
          ),
        ),
        BottomNavigationBarItem(
          label: "Biblioteca",
          icon: Icon(
            Icons.video_collection_rounded,
          ),
        ),
      ]),
    );
  }
}
