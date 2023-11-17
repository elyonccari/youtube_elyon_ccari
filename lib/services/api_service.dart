import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube_elyon_ccari/models/video_model.dart';
import 'package:youtube_elyon_ccari/utils/constants.dart';

class APIService {
  Future<List<VideoModel>> getVideos() async {
    List<VideoModel> videosModel = [];

    String _path =
        "$pathProduction/search?part=snippet&key=$apiKey&maxResults=20&regionCode=PE";
        
    Uri _uri = Uri.parse(_path);

    try {
      http.Response response = await http.get(_uri);

      if (response.statusCode == 200) {
        Map<String, dynamic> myMap = json.decode(response.body);
        List videos = myMap["items"];
        print(videos);
        videosModel =
            videos.map((e) => VideoModel.fromJson(e["snippet"])).toList();
        return videosModel;
      } else {
    
        print("Error: ${response.statusCode}");
        return [];
      }
    } catch (error) {
     
      print("Error: $error");
      return [];
    }
  }
}
