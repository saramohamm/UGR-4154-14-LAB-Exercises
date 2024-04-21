// main.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'posts_provider.dart';
import 'posts_widget.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PostsProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: PostsWidget(),
      ),
    );
  }
}
