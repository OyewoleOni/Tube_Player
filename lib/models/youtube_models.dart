class VideoSearchResult {
  String? nextPageToken;
  List<YouTubeVideo>? items;

  VideoSearchResult({this.nextPageToken, this.items});

  VideoSearchResult.fromJson(Map<String, dynamic> json) {
    nextPageToken = json['nextPageToken'];
    if (json['items'] != null) {
      items = <YouTubeVideo>[];
      json['items'].forEach((v) {
        items!.add(YouTubeVideo.fromJson(v));
      });
    }
  }
}

class YouTubeVideo {
  Id? id;
  Snippet? snippet;

  YouTubeVideo({this.id, this.snippet});

  YouTubeVideo.fromJson(Map<String, dynamic> json) {
    id = json['id'] != null ? Id.fromJson(json['id']) : null;
    snippet =
        json['snippet'] != null ? Snippet.fromJson(json['snippet']) : null;
  }
}

class Id {
  String? videoId;

  Id({this.videoId});

  Id.fromJson(Map<String, dynamic> json) {
    videoId = json['videoId'];
  }
}

class Snippet {
  String? publishedAt;
  String? channelId;
  String? title;
  String? description;
  Thumbnails? thumbnails;
  String? channelTitle;

  Snippet(
      {this.publishedAt,
      this.channelId,
      this.title,
      this.description,
      this.thumbnails,
      this.channelTitle});

  Snippet.fromJson(Map<String, dynamic> json) {
    publishedAt = json['publishedAt'];
    channelId = json['channelId'];
    title = json['title'];
    description = json['description'];
    thumbnails = json['thumbnails'] != null
        ? Thumbnails.fromJson(json['thumbnails'])
        : null;
    channelTitle = json['channelTitle'];
  }
}

class Thumbnails {
  Thumbnail? medium;
  Thumbnail? high;

  Thumbnails({this.medium, this.high});

  Thumbnails.fromJson(Map<String, dynamic> json) {
    medium = json['medium'] != null ? Thumbnail.fromJson(json['medium']) : null;
    high = json['high'] != null ? Thumbnail.fromJson(json['high']) : null;
  }
}

class Thumbnail {
  String? url;

  Thumbnail({this.url});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }
}
