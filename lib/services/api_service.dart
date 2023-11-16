import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube_elyon_ccari/models/video_model.dart';

class APIService{
  Future<List<VideoModel>> getVideos() async{
    List<VideoModel> videosModel =[];

    String _path = "https://youtube.googleapis.com/youtube/v3/search?part=snippet&key=AIzaSyATttRibbPlurZIZmQBAPKGQEF6Zvr-omE&maxResults=20&regionCode=PE&q=linkin park";
    Uri _uri = Uri.parse(_path);

    http.Response response = await http.get(_uri);

   if(response.statusCode == 200){
    Map<String, dynamic> myMap = json.decode(response.body); 
    List videos = myMap["items"];
    print(videos);
    videosModel = videos.map((e) => VideoModel.fromJson(e)).toList();
    return videosModel;
      }
      return videosModel;
  }
}