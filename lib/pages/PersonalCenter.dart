/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-04-01 14:00:46
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-04-06 13:54:13
 */

import 'package:flutter/material.dart';

class PersonalCenter extends StatefulWidget{
  @override
  createState() => new PersonalCenterState();
}

class PersonalCenterState extends State<PersonalCenter>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('个人中心'),
        backgroundColor: Colors.red,
      ),
      
    );
  }
}