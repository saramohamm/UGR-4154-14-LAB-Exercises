import 'package:bloc_posts_exercise/bloc/posts_bloc.dart';
import 'package:bloc_posts_exercise/bloc/posts_event.dart';
// import 'package:bloc_posts_exercise/posts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts Demo',
      home: PostList(),
    );
  }
}
class PostList extends StatefulWidget {
  const PostList({super.key});

  @override
  State<PostList> createState() => _PostsListState();
}

class _PostsListState extends State<PostList> {
  final PostsBloc postsBloc = PostsBloc();
  List<dynamic> _posts = [];
  @override
  void initState(){
    postsBloc.add(PostsInitialFetchEvent());
    super.initState();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text('Posts'),
        ),
      body: StreamBuilder<List<dynamic>>(
        stream: postsBloc.postsStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _posts = snapshot.data!;
            return ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                var post = _posts[index];
                return ListTile(
                  title: Text(post['title']),
                  subtitle: Text(post['body']),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Failed to fetch posts'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );

  }
}

