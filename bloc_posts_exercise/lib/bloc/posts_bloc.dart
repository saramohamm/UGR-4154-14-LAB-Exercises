import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:bloc_posts_exercise/bloc/posts_event.dart';
import 'package:bloc_posts_exercise/bloc/posts_state.dart';
import 'package:bloc_posts_exercise/posts_data_ui_model.dart';
import 'package:http/http.dart' as http;


class  PostsBloc extends Bloc<PostEvent, PostState>{
  final _postsController = StreamController<List<dynamic>>(); // StreamController to handle the stream of posts

  Stream<List<dynamic>> get postsStream => _postsController.stream; // Getter to access the stream
  PostsBloc(): super(PostsInitial()){
  on<PostsInitialFetchEvent>(postsInitalFetchEvent);
}
Future<void> postsInitalFetchEvent(
    PostsInitialFetchEvent event, Emitter<PostState> emit)
    async{
    var client = http.Client();
    List<dynamic> _posts = [];

    var response = await client.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      _posts = json.decode(response.body);
    }
    else {
      throw Exception('Failed to fetch posts');
    }
    for(int i=0; i< response.body.length; i++){
      _posts[i] = response.body[i];
    }
  }
}
