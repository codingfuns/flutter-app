/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-03-26 10:17:11
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-05-18 16:50:54
 */

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/routers/Routes.dart';
import 'package:flutter_app/routers/application.dart';
import './navigator.dart';

void main() {
  runApp(MyApp());
 
}



class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    
    final router = new FluroRouter(); //路由初始化
    Routes.configureRoute(router);
    ApplicationRoute.router = router;

    return new MaterialApp(
      title: 'Startup Name Generator11',
      // theme: new ThemeData.dark(),
      onGenerateRoute: ApplicationRoute.router.generator, //路由静态化
      home: new NavigatorBar(),
    );
  }
}

