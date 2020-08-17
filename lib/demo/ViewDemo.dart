
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/moudle/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageViewBuilderDemo();
  }
}

//这是进行灵活的数据接入
class PageViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length, //接入数据的下标
      itemBuilder: _pageItemBuilder,
    );
  }

//进行数据展示的方法,以及布局
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
              ),
            ],
          ),
        )
      ],
    );
  }
}

//默认写死的值
class ViewPageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
//      pageSnapping: false,//这个参数去除阻尼效果,随意拖动
//      reverse: true,//这个参数用来设定几个页面的排序,true为倒叙,false为正序
      scrollDirection: Axis.vertical, //这个属性用来设定是横向滑动还是纵向滑动
      onPageChanged: (currentPage) => debugPrint("页面$currentPage"),
      controller: PageController(
          //这个组件用来控制下面的子组件显示宽度,默认选中页面等等
          initialPage: 0, //设置默认选择页面
          keepPage: false, //使用false 可以取消之前的设定
          viewportFraction: 0.8),
      children: <Widget>[
        Container(
            color: Colors.brown[900],
            alignment: Alignment(0.0, 0.0),
            child: Text(
              'ONE',
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            )),
        Container(
            color: Colors.blue,
            alignment: Alignment(0.0, 0.0),
            child: Text(
              'TWO',
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            )),
        Container(
            color: Colors.red[600],
            alignment: Alignment(0.0, 0.0),
            child: Text(
              'THREE',
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            )),
      ],
    );
    ;
  }
}
