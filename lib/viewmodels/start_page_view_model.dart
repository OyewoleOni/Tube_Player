import 'package:tube_player/app_constants.dart';
import 'package:tube_player/models/youtube_models.dart';
import 'package:tube_player/services/youtube_api_service.dart';
import 'package:tube_player/viewmodels/base_view_model.dart';

class StartPageViewModel extends BaseViewModel {
  final YouTubeApiService _apiService = YouTubeApiService();

  String _nextToken = "";
  String _searchTerm = "iPhone 14";

  List<YouTubeVideo> _youtubeVideos = [];
  List<YouTubeVideo> get YoutubeVideos => _youtubeVideos;

  StartPageViewModel() {
    Title = "Tube Player";
  }

  Future<void> searchVideos() async {
    setDataLoadingIndicators(isStarting: true);

    LoadingText = "Hold on while we search for Youtube videos....";

    _youtubeVideos = [];
    try {
      //search for the youtube videos
      await _getYoutubeVideos();

      DataLoaded = true;
    } catch (e) {
      IsErrorState = true;
      ErrorMessage =
          "Something went wrong Please try again later and if the problem persists, Please contact support at ${Constants.EmailAddress}";
    } finally {
      setDataLoadingIndicators(isStarting: false);
    }
  }

  Future<void> _getYoutubeVideos() async {
    //Search the videos
    var videoSearchResult =
        await _apiService.searchVideos(_searchTerm, nextPageToken: _nextToken);

    _nextToken = videoSearchResult.nextPageToken!;

    _youtubeVideos.addAll(videoSearchResult.items!);
  }
}
