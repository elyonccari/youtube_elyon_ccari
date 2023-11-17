import 'package:flutter/material.dart';
import 'package:youtube_elyon_ccari/models/video_model.dart';
import 'package:youtube_elyon_ccari/services/api_service.dart';
import 'package:youtube_elyon_ccari/ui/general/colors.dart';
import 'package:youtube_elyon_ccari/ui/general/widgets/item_filter_widget.dart';
import 'package:youtube_elyon_ccari/ui/general/widgets/item_video_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late APIService _apiService;
  List<VideoModel> videos = [];

  @override
  void initState() {
    super.initState();
    _apiService = APIService();
    getData();
  }

  void getData() async {
    final value = await _apiService.getVideos();
    setState(() {
      videos = value;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    label: const Text("Navegar"),
                  ),
                  const SizedBox(
                    width: 30.0,
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
            const SizedBox(
              height: 20,
            ),
          
            ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: videos.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemVideoWidget(videoModel: videos[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
