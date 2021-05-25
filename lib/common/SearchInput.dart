/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-04-30 16:35:11
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-04-30 17:01:30
 */
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,width: 1.0),
        color:Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(36.0))
      ),
      alignment: Alignment.center,
      child: Text('请输入搜索信息',style: TextStyle(
        color: Colors.grey,
        fontSize: 14
      ),),
    );
  }
}