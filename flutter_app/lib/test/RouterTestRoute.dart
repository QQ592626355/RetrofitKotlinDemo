import 'package:flutter/material.dart';
import 'package:flutter_app/test/TipRoute.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("RouteTest"),
      ),
      body:  Center(
        child: RaisedButton(
          onPressed: ()async{
            var result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) {
                      return TipRoute(text: "我是提示参数");
                    }
                )
            );
            print("${result}");
          },
          child: Text("打开提示页面"),
        ),
      ),
    )


     ;

  }
}
