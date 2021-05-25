/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-04-01 11:48:01
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-04-16 11:47:34
 */
import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/page1.dart';
import './pages/page2.dart';

class NavigatorBar extends StatefulWidget {
  @override
  createState() => new NavigatorState();
}

class NavigatorState extends State<NavigatorBar>{
  int _currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    DateTime _lastPressedAt;
    return new Scaffold(
      body: WillPopScope(//导航返回拦截
        onWillPop: () async {
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
            //两次点击间隔超过1秒则重新计时
            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        },
        child: PageView(
          controller: _pageController,
          children: <Widget>[Home(),Page1(),Page2()],
          onPageChanged: (index){
            this._currentIndex = index;
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home
            ),
             label:'首页' ,
             
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.email,
            ),
             label:'邮件' ,
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.person
            ),
            label:'个人'
          ),
        ],
        currentIndex: _currentIndex,
        onTap:(index){
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        }
      )      
    );
  }
}