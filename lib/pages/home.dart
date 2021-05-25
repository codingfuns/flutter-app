/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-04-01 14:00:46
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-04-30 16:43:40
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/common/SearchInput.dart';
import 'package:flutter_app/views/Learning.dart';
import '../views/Suggest.dart';
import '../views/Hot.dart';
import '../views/Movie.dart';
import '../views/Drawer.dart';

class Home extends StatefulWidget{
  @override
  createState() => new HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    List _tabs = [
      {
        'id':'1',
        'label':'推荐'
      },{
        'id':'2',
        'label':'热点'
      },{
        'id':'3',
        'label':'娱乐'
      },{
        'id':'4',
        'label':'学习1'
      }
    ];
    return new Scaffold(
      appBar: new AppBar(
        title: new SearchInput(),
        backgroundColor: Colors.red,
        leading: Builder(builder: (context) {
            return IconButton(
              icon: Icon(Icons.dashboard, color: Colors.white), //自定义图标
              onPressed: () {
                // 打开抽屉菜单  
                Scaffold.of(context).openDrawer(); 
              },
            );
          }),
        bottom: new TabBar(
          
          tabs: _tabs.map((tab){
            return new Tab(
              text: tab['label'],
            );
          }).toList(),
          controller: controller,
        ),
      ),
      drawer: new MyDrawer(),
      body: new TabBarView(
        // children: _tabs.map((tabs){
        //   switch(tabs['id']){
        //     case '1':return new Suggest();break;
        //     case '2':return new Hot();break;
        //     case '3':return new Movie();break;
        //     case '4':return new Learning();break;
        //     default:
        //   }
        // }).toList(),
        children: <Widget>[Suggest(),Hot(),Movie(),Learning()],
        controller: controller
      )
  );
   
  
  }
}