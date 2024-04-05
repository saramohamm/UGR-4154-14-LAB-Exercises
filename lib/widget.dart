import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ijTracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('ijTracker'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  child: Text('RS'),
                ),
                SizedBox(width: 8.0),
                Text('Robert Steven'),
                Spacer(),
                Text('Logout'),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: Text('Online | Battery 90%', style: TextStyle(color: Colors.white)),
            ),
          ),
          buildRowWithIcons(Icons.map, 'Map', Icons.location_on, 'Live Location', Icons.history, 'Location History'),
          buildRowWithIcons(Icons.public, 'Set Geo-reference', Icons.details, 'Detail', Icons.edit, 'Edit'),
          buildRowWithIcons(Icons.map, 'Map', Icons.location_on, 'Live Location', Icons.history, 'Location History'),
          buildRowWithIcons(Icons.map, 'Map', Icons.location_on, 'Live Location', Icons.history, 'Location History'),
          buildRowWithIcons(Icons.map, 'Map', Icons.location_on, 'Live Location', Icons.history, 'Location History'),
        ],
      ),
    );
  }

  Widget buildRowWithIcons(IconData iconData1, String text1, IconData iconData2, String text2, IconData iconData3, String text3) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(iconData1, color: Colors.blue),
              SizedBox(height: 8.0),
              Text(text1),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(iconData2, color: Colors.blue),
              SizedBox(height: 8.0),
              Text(text2),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(iconData3, color: Colors.blue),
              SizedBox(height: 8.0),
              Text(text3),
            ],
          ),
        ],
      ),
    );
  }
}
