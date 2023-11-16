import 'package:flutter/material.dart';
import 'package:youtube_elyon_ccari/ui/general/colors.dart';
import 'package:youtube_elyon_ccari/ui/general/widgets/item_filter_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 3),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: kBrandSecondaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    icon: const Icon(Icons.explore_outlined),
                    label: const Text(
                      "Navegar",
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                    child: VerticalDivider(
                      color: Colors.white,
                      thickness: 1.0,
                    ),
                  ),
                  ItemFilterWidget(
                    text: "Todos",
                    isSelected: true,
                  ),
                  ItemFilterWidget(
                    text: "Mixes",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Musics",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Programacion",
                    isSelected: false,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Espacio entre los botones y la imagen
            Column(
              children: [
                Image.network(
                  "https://images.pexels.com/photos/163036/mario-luigi-yoschi-figures-163036.jpeg",
                  width: double.infinity,
                  height: height * 0.3,
                  fit: BoxFit.cover,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white12,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?"),
                  ),
                  title: Text(
                    "Lorem ipsum dolor sit amet",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  subtitle: Text(
                    "Mario Bross . 34.5 M de vistas hace 2 años",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 13.0,
                    ),
                  ),
                  trailing: Column(
                    children: [
                      Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
