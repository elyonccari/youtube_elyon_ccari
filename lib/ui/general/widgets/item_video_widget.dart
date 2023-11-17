import 'package:flutter/material.dart';
import 'package:youtube_elyon_ccari/models/video_model.dart';

class ItemVideoWidget extends StatelessWidget {
  final VideoModel videoModel;

  ItemVideoWidget({required this.videoModel});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(top: 6, bottom: 10.0),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                videoModel.snippet.thumbnails.high.url,
                width: double.infinity,
                height: height * 0.3,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                  margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                  color: Colors.black.withOpacity(0.7),
                  child: Text(
                    "24:22",
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              backgroundColor: Colors.white12,
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg",
              ),
            ),
            title: Text(
              "Super Mario Bros. La Película - Tráiler Oficial (Universal Pictures) HD",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            subtitle: Text(
              "Elyon ccari chillihuani | 34.5 M de vistas hace 2 años",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white54,
                fontSize: 13.0,
              ),
            ),
            trailing: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 4.0),
                  child: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

