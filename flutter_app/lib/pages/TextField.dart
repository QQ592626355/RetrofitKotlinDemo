import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
 var _userName =  TextEditingController();//初始化赋值

 var _password;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userName.text = "初始值";
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单演示界面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        //child: TextDemo(),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名"
              ),
              controller: _userName,
              onChanged:(value){
                setState(() {
                  _userName.text = value;
                });
              },
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "请输入密码"
              ),
             // controller: _userName,
              onChanged:(value){
                setState(() {
                 _password = value;
                });
              },
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 40,
              child:  RaisedButton(
                  child: Text("登录"),
                  onPressed: (){
                    print(_userName.text);
                    print(_password);
                  },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),


          ],
        ),
      ),
    );
  }
}


class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//            TextField(),
//            SizedBox(height: 20,),
//            TextField(
//              decoration: InputDecoration(
//                hintText: "请输入搜索内容",
//                border: OutlineInputBorder()
//              ),
//            ),
//            SizedBox(height: 20),
//            TextField(
//              maxLines: 4,
//              decoration: InputDecoration(
//                  hintText: "多行文本框",
//                  border: OutlineInputBorder()
//              ),
//            ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
              hintText: "用户名",
              border: OutlineInputBorder(),
              labelText: "用户名"
          ),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: "密码框",
              border: OutlineInputBorder(),
              labelText: "密码"
          ),
        ),
        TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.people),
            hintText: "请输入用户名",
          ),
        )
      ],
    );
  }
}

