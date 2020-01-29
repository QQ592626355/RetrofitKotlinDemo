import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkbox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: this.flag,
                onChanged: (value){
                  setState(() {
                    this.flag = value;
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
