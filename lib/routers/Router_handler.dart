/*
 * @Description: 定义路由操作处理
 * @Author: Mr.WJ
 * @Date: 2021-04-30 09:51:16
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-05-25 15:09:02
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/Detail.dart';

Handler detailHandler = Handler(handlerFunc: (BuildContext contex,Map<String,dynamic> params){
  String goodsId = params['id'].first;
  return Detail(goodsId: goodsId,);
});