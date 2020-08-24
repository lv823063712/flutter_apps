//文件名: StateManagementDemo
//创建者:Lv Fei
//创建日期:2020/8/24 11:35
//描述:TODO

import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
      ),
      body:Counter(_count,_increaseCount),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseCount,
        child: Icon(Icons.add),
      ),
    );
  }

  void _increaseCount() {
    setState(() {
      _count += 1;
      print(_count);
    });
  }
}

class Counter extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;


  Counter(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(
        label: Text('$count'),
        onPressed: increaseCount,
      ),
    );
  }
}

