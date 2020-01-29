
import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex=0;
  List _pageList=[
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        floatingActionButton: Container(
          height: 80,
          width: 80,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(top:10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),

          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              setState(() {
                this._currentIndex = 1;
              });
            },
            backgroundColor: this._currentIndex ==1?Colors.red:Colors.yellow,
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,   //配置对应的索引值选中
          onTap: (int index){
              setState(() {  //改变状态
                  this._currentIndex=index;
              });
          },
          iconSize:36.0,      //icon的大小
          fixedColor:Colors.red,  //选中的颜色  
          type:BottomNavigationBarType.fixed,   //配置底部tabs可以有多个按钮
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
            ),
            
             BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            )
          ],
        ),

      drawer: Drawer(
        child: Column(
          children: <Widget>[

            Row(
               children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("大地老师"),
                    accountEmail: Text("592626355@qq.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579101193333&di=719bee8ad4b8948435eabf539c1dd779&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201711%2F23%2F20171123191630_4YH8n.thumb.700_0.jpeg"),
                    ),
                    decoration: BoxDecoration(
                     image: DecorationImage(
                       image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579100574288&di=c32bb472850f9c44e5c8e4768a18ac5d&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201702%2F19%2F20170219141906_AQfnE.png"),
                       fit: BoxFit.cover
                     )
                    ),
                  ),
                )
               ],
            ),




            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text("我的空间"),


            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
               title: Text("用户中心"),
              onTap: (){
                Navigator.of(context).pop();//隐藏侧边栏
                Navigator.pushNamed(context, "/user");
              },
            ),
            Divider(),
            ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text("设置中心")
            ),
          ],
        ),
      ),
    endDrawer: Drawer(
      child: Text("右侧侧边栏"),
    ),

      );
  }
}