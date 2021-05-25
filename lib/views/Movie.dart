/*
 * @Description: file content
 * @Author: Mr.WJ
 * @Date: 2021-04-01 17:38:05
 * @LastEditors: Mr.WJ
 * @LastEditTime: 2021-04-02 14:55:24
 */
import 'package:flutter/material.dart';

class Movie extends StatefulWidget{
  @override
  createState()=>new MovieState();
}

class MovieState extends State<Movie>{
  @override
  Widget build(BuildContext context) {
    return new Text('Movie');
  }
}