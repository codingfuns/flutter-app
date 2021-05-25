/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-04-01 17:38:05
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-05-25 15:06:10
 */
import 'package:flutter/material.dart';
import 'package:flutter_app/routers/application.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Suggest extends StatefulWidget{
  @override
  createState()=>new SuggestState();
}

class SuggestState extends State<Suggest>{
  final swiperImageData = [
    'images/banner_01.png',
    'images/banner_02.png',
    'images/banner_03.png',
    'images/banner_04.png',
    'images/banner_05.png',
    'images/banner_06.png'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context,int index){
        return Container(
          child: Flex(
            direction: Axis.vertical,
            children: [
              Container(
                height: 200,
                child: new Swiper(
                  itemBuilder: (BuildContext context,int index){
                    return new Image.asset("${swiperImageData[index]}",fit: BoxFit.fill,);
                  },
                  itemCount: 6,
                  pagination: new SwiperPagination(),
                ),
              ),
              Container(
                height: 60,
                width: 100,
                child: ElevatedButton(onPressed: ()=>{
                  ApplicationRoute.router.navigateTo(context, '/detail?id=asdfgh')
                }, child: Text('123')),
                
              )
            ],
          )
        );
      }
    );
 
  }
}