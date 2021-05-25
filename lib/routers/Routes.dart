/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-04-30 09:51:45
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-04-30 10:14:15
 */

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/routers/Router_handler.dart';

class Routes{
  static String root = '/';
  static String detailPage = '/detail';
  static void configureRoute(FluroRouter router){
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context,Map<String,List<String>> params){
        print('ERROR====>ROUTE WAS NOT FONUND!!!');
      }
    );
    router.define(detailPage, handler: detailHandler);
  }
}