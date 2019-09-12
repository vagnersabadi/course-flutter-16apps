import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:favorite_yt_bloc/blocs/videos_bloc.dart';
import 'package:favorite_yt_bloc/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: VideosBloc(),
      child: MaterialApp(
        title: 'FlutterTube',
        home: Home(),
      ),
    );
  }
}
