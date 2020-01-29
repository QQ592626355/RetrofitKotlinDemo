import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Button.dart';
import 'package:flutter_app/pages/CheckBoxDemo.dart';
import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/User.dart';
import '../pages/TextField.dart';
import '../pages/Radio.dart';
import '../pages/FormDemo.dart';
import '../test/RouterTestRoute.dart';
//配置路由
final routes = {
  '/':(context)=>Tabs(),
  '/appbardemo':(context) =>AppBarDemoPage(),
  '/tabBarController':(context)=>TabBarControllerPage(),
  '/user':(context)=>UserPage(),
  '/buttonPage':(context)=>ButtonDemoPage(),
  '/textfield':(context)=>TextFieldDemoPage(),
  '/checkbox':(context)=>CheckBoxDemo(),
  "/radio":(context)=>RadioDemo(),
  "/formdemo":(context)=>FormDemoPage(),
  "/routetest":(context)=>RouterTestRoute()
};
//固定
var onGenerateRoute = (RouteSettings settings){
  //统一处理
  final String name= settings.name;
  print(settings.name);
  final Function pageContentBuilder = routes[name];
  if(pageContentBuilder !=null){
    if(settings.arguments !=null){
      final Route route = MaterialPageRoute(
          builder: (context)=>
              pageContentBuilder(context,arguments:settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context)=>
              pageContentBuilder(context));
      return route;//回到主界面
    }
  }
};