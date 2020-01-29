import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {

  //构造方法
  FormPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text("哈哈哈哈"),
      ),
      body: Text("我是个表单"),
    );
  }
}
