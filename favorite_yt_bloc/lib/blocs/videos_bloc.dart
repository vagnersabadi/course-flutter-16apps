import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:favorite_yt_bloc/api.dart';
import 'package:favorite_yt_bloc/models/video.dart';

class VideosBloc implements BlocBase {
  Api api;

  List<Video> videos;

  final StreamController<List<Video>> _videoController =
      StreamController<List<Video>>();
  Stream get outVideos => _videoController.stream;

  final StreamController<String> _searchController = StreamController<String>();
  Sink get inSearch => _searchController.sink;

  VideosBloc() {
    api = Api();

    _searchController.stream.listen(_search);
  }

  void _search(String search) async {
    videos = await api.search(search);
    _videoController.sink.add(videos);
  }

  @override
  void dispose() {
    _videoController.close();
    _searchController.close();
  }
}
