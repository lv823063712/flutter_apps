import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/demo/DrawerDemo.dart';
import 'package:flutter_apps/demo/LayoutDemo.dart';

import 'demo/BasicDemo.dart';
import 'demo/BottomNavigatpionBarDemo.dart';
import 'demo/listview_demo.dart';
import 'moudle/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '另一个demo',
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow, //背景主题色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //按下高亮色
        splashColor: Colors.white70, //水波纹颜色
      ), //设置主题,也就是头部的背景色之类的
    );
  }
}

//home小控件
class Home extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //Scaffold可以为页面提供一个基本结构
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          //这个属性用来让title居中
          //顶部的工具栏
          title: Text(
            'Flutter_Demo',
            style: TextStyle(fontSize: 22.0),
          ),
          actions: <Widget>[
            //这里可以设置一组小部件右部按钮
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Navigration',
              onPressed: () => debugPrint('搜索按钮'),
            ),
          ],
          elevation: 0.0,
          //自带的阴影效果
          bottom: TabBar(
            unselectedLabelColor: Colors.redAccent,
            //未选中颜色
            indicatorColor: Colors.black54,
            //标识线的颜色
            indicatorSize: TabBarIndicatorSize.label,
            //标识线显示的长度
            indicatorWeight: 3.0,
            //tab的标识线粗细
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.cake)),
              Tab(icon: Icon(Icons.satellite)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViews(),
            BasicDemo(),
            LayoutDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar:BottomNavigatpionBarDemo()
      ),
    );
  }


}
