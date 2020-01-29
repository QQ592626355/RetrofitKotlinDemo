import 'package:flutter/material.dart';
import '../Search.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("AppBar界面"),
          onPressed: (){
            Navigator.pushNamed(context, "/appbardemo");
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text("跳转到TabBarController"),
          onPressed: (){
            Navigator.pushNamed(context, "/tabBarController");
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text("表单演示界面"),
          onPressed: (){
            Navigator.pushNamed(context, "/textfield");
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),

        RaisedButton(
          child: Text("Formbody界面"),
          onPressed: (){
            Navigator.pushNamed(context, "/formdemo");
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );


      //Text("我是首页组件");
  }
}