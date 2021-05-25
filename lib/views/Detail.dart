/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-04-01 17:38:05
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-05-25 15:04:42
 */
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Detail extends StatefulWidget{
  
  Detail({Key key, @required this.goodsId}):super(key: key);
  final goodsId;

  @override
  createState()=>new Detailtate();
}

class Detailtate extends State<Detail>{
  final swiperImageData = [
    'images/goods_banner_01.webp',
    'images/goods_banner_02.webp',
    'images/goods_banner_03.webp',
    'images/goods_banner_04.webp',
    'images/goods_banner_05.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Container(
            height: 400,
            child: new Swiper(
              itemBuilder: (BuildContext context,int index){
                return new Image.asset("${swiperImageData[index]}",fit: BoxFit.fill,);
              },
              itemCount: 5,
              pagination: new SwiperPagination(),
            )
          ),
          Text(widget.goodsId)
        ],
      ),
    );
  }
}