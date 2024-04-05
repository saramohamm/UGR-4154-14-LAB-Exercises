import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Details',
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search Product',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            'car.jpg',
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('\$8.6'),
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Description about photo',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.star),
                  Text('Rating'),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('540 scale'),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.location_on),
                  Text('Ethiopia'),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Variant',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Size: XS',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildSizeColumn('XS', true),
              buildSizeColumn('S', false),
              buildSizeColumn('M', false),
              buildSizeColumn('L', false),
              buildSizeColumn('XL', false),
              buildSizeColumn('XXL', false),
            ],
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Color: Red',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildColorColumn('Red', true),
              buildColorColumn('Black', false),
              buildColorColumn('Green', false),
              buildColorColumn('White', false),
              buildColorColumn('Blue', false),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {},
              ),
              Text('Add to Cart'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSizeColumn(String size, bool isActive) {
    return Container(
      color: size == 'XS' ? Colors.blue : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Size: $size',
          style: TextStyle(color: size == 'XS' ? Colors.white : Colors.black),
        ),
      ),
    );
  }

  Widget buildColorColumn(String color, bool isActive) {
    return Container(
      color: color == 'Red' ? Colors.blue : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Color: $color',
          style: TextStyle(color: color == 'Red' ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
