import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'moudle/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '另一个demo',
      home: Home(),
      theme: ThemeData(primaryColor: Colors.amber),
    );
  }
}

//home小控件
class Home extends StatelessWidget {
  Widget _listitembuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(
            height: 16.0,
          ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          '自定义列表项',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22.0),
        ),
      ),
      body: ListView.builder(
          itemCount: posts.length, itemBuilder: _listitembuilder),
    );
  }
}

//hello 小控件
class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'data',
        style: TextStyle(fontSize: 22.0, color: Colors.black87),
      ),
    );
  }
}
