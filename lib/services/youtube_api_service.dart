import 'package:dio/dio.dart';
import 'package:tube_player/app_constants.dart';
import 'package:tube_player/models/youtube_models.dart';

class YouTubeApiService {
  late Dio _httpClient;

  YouTubeApiService() {
    _httpClient = Dio();
    _httpClient.options.baseUrl = Constants.ApiServiceURL;
  }

  Future<VideoSearchResult> searchVideos(String searchTerm,
      {String nextPageToken = ""}) async {
    var resourceUri =
        "search?part=snippet&q=${searchTerm}&key=${Constants.ApiKey}";

    if (nextPageToken.isNotEmpty) resourceUri += "&pagetoken=${nextPageToken}";

    var response = await _httpClient.get(Uri.encodeFull(resourceUri));

    return VideoSearchResult.fromJson(response.data);
  }
}
