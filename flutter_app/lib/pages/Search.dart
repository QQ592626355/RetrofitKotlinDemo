import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  final arguments;

  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(//带有主题的框架，
      appBar: AppBar(
        title: Text("我是搜索页面"),
      ),
      body: Text("搜索页面内容区域${arguments!=null ? arguments['id']:'0'}"),

    );
  }
}
