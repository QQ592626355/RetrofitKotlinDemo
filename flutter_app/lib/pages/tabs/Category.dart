import 'package:flutter/material.dart';
import '../Form.dart';
class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: <Widget>[
              Expanded(
                child:TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: "热销",),
                    Tab(text: "推荐",),
                    Tab(text: "热销",),
                    Tab(text: "推荐",),
                    Tab(text: "热销",),
                    Tab(text: "推荐",),
                    Tab(text: "推荐",),
                    Tab(text: "热销",),
                    Tab(text: "推荐",),
                  ],
                ) ,
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
               ListTile(
                 title: Text("第一个页面"),
               ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
                ListTile(
                  title: Text("第一个页面"),
                ),
              ],
            ),







          ],
      ),

    )
    );
  }
}