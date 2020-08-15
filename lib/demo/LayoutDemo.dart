import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,//设置是否均匀分布空间
//        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              alignment: Alignment(0, -0.9),
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(Icons.ac_unit,color: Colors.white,size: 32.0,),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(Icons.brightness_2,color: Colors.white,size: 32.0,),
            ),
          ),
        ],
      ),
    );
  }
}


class IconBadge extends StatelessWidget {

  final IconData icon;
  final double sizi;

  //构造方法
  IconBadge(this.icon, {
    this.sizi = 32.0
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon,size: sizi,color: Colors.white,),
      width: sizi+60,
      height: sizi+60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }

}
