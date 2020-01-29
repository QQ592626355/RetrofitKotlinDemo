import 'package:flutter/material.dart';
class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  var sex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("男"),
              Radio(
                value: 1,
                onChanged: (value){
                  setState(() {
                    this.sex = value;
                  });
                },
                groupValue: this.sex,
              ),
              Text("女"),
              Radio(
                value: 2,
                onChanged: (value){
                  setState(() {
                    this.sex = value;
                  });
                },
                groupValue: this.sex,
              ),
            ],
          )
        ],
      ),
    );
  }
}
