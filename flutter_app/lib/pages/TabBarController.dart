import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

//实现类
class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{
 //创建controller对象
  TabController _tabController;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
  //初始化
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);

    _tabController.addListener((){
      print(_tabController.index);
      //实现一些自定义功能
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
          controller: this._tabController,//加入controller
          tabs: <Widget>[
            Tab(text: "热销",),
            Tab(text: "推荐",),
          ],
        ),
      ),

      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(child: Text("热销")),
          Center(child: Text("推荐")),
        ],
      ),
    );
  }
}
