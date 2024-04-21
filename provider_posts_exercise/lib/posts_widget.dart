// posts_widget.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'posts_provider.dart';
import 'post_model.dart';

class PostsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postsProvider = Provider.of<PostsProvider>(context);
    return ListView.builder(
      itemCount: postsProvider.posts.length,
      itemBuilder: (context, index) {
        final post = postsProvider.posts[index];
        return ListTile(
          title: Text(post.title),
          subtitle: Text(post.body),
        );
      },
    );
  }
}
