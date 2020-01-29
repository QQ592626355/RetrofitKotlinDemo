import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示页面"),
      ),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text("普通按钮"),
                onPressed: (){
                  print("普通按钮");
                },
              ),
              SizedBox(width: 5,),
              RaisedButton(
                child: Text("有颜色的按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print("有颜色的按钮");
                },
              ),
              SizedBox(width: 10,),
              RaisedButton(
                child: Text("有阴影的按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 20,
                onPressed: (){
                  print("有阴影的按钮");
                },
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Container(
                height: 50,
                width: 200,
                child: RaisedButton(
                  child: Text("普通按钮"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){
                    print("普通按钮");
                  },
                ),
              ),


              SizedBox(width: 10,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[

              Expanded(
                child:   Container(
                  height: 40,
                 margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text("自适应按钮"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){
                      print("自适应按钮");
                    },
                  ),
                ),
              ),
              SizedBox(width: 10,),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton.icon(
                icon:Icon(Icons.search),
                label: Text("图标按钮"),
                color: Colors.blue,
                textColor: Colors.white,
              onPressed: (){
                  print("图标按钮");
              },),
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text("圆角按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: (){
                  print("圆角按钮");
                },
              ),
              SizedBox(width: 5,),
              Container(
                height: 100,
                width: 100,
                child: RaisedButton(
                  child: Text("圆形按钮"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  splashColor: Colors.red,
                  shape: CircleBorder(
                      side: BorderSide(
                          color: Colors.white
                      )
                  ),
                  onPressed: (){
                    print("圆形按钮");
                  },
                ),
              )

            ],
          ),


        ],
      ),
    );
  }
}
