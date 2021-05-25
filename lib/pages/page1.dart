/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-04-01 14:00:46
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-04-06 14:37:28
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/views/Learning.dart';
import '../views/Suggest.dart';
import '../views/Hot.dart';
import '../views/Movie.dart';

class Page1 extends StatefulWidget{
  @override
  createState() => new Page1State();
}

class Page1State extends State<Page1>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('邮件'),
        backgroundColor: Colors.red,
      ),
      body: Text('data')
      
    );
  }
}