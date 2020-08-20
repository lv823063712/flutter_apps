//文件名: ChipDemo
//创建者:Lv Fei
//创建日期:2020/8/20 16:50
//描述:TODO

import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0), //设定一个全局填充
        child: Column(
          //设定一个线性布局
          mainAxisAlignment: MainAxisAlignment.center, //让部件垂直居中
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              children: <Widget>[
                Chip(label: Text('lift')),
                Chip(
                  label: Text('sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Test'),
                  avatar: CircleAvatar(//这个属性是在空间的左边增加一个圆形的标志
                    backgroundColor: Colors.grey,
                    child: Text('飞'),
                  ),
                ),
                Chip(
                  label: Text('Test'),
                  avatar: CircleAvatar(//这个属性是在空间的左边增加一个圆形的标志
                    backgroundImage: NetworkImage('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1075042083,3547585218&fm=26&gp=0.jpg'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
