import 'package:flutter/material.dart';
import 'package:youtube_elyon_ccari/pages/home_page.dart';
import 'package:youtube_elyon_ccari/ui/general/colors.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    HomePage(),
    Center(child: Text("Shorts")),
    Center(child: Text("Agregar")),
    Center(child: Text("Suscriptores")),
    Center(child: Text("Biblioteca")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBrandPrimaryColor,
        title: Image.asset(
          'assets/images/logo.png',
          height: 58.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cast,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
                Positioned(
                  top: -4,
                  right: -3,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Text(
                      "5+",
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          const CircleAvatar(
            backgroundColor: Colors.white12,
            radius: 20,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/7080761/pexels-photo-7080761.jpeg?"),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kBrandPrimaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
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
        ],
      ),
    );
  }
}
