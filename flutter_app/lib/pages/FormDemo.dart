import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {

  String username ;
  int sex =1;

  List hobby = [
    {
    "checked": true,
      "title":"吃饭"
    },
    {
      "checked": true,
      "title":"睡觉"
    },  {
      "checked": true,
      "title":"写代码"
    },


  ];
 List<Widget> _getHobby(){
   List<Widget> tempList =[];
   for(var i=0;i<hobby.length;i++){

    // tempList.add(Text(this.hobby[i]["title"]+":"));
     tempList.add(
       Row(
         children: <Widget>[
           Text(this.hobby[i]["title"]+":"),
           Checkbox(
             value: this.hobby[i]["checked"],
             onChanged: (value){
               setState(() {
                 this.hobby[i]["checked"] = value;
               });
             },
           )
         ],
       )

     );
   }
   return tempList;
 }



  void _sexChanged(value){
    setState(() {
      this.sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormDemoPage"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  hintText:"用户名"
              ),
              onChanged: (value){
                setState(() {
                  this.username = value;
                });
              },
            ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Text("男"),
              Radio(
                value: 1,
                onChanged:this._sexChanged,
                groupValue: this.sex,
              ),
              SizedBox(height: 20,),
              Text("女"),
              Radio(
                value: 2,
                onChanged:this._sexChanged,//加括号表示调用，不加表示赋值
                groupValue: this.sex,
              ),
            ],
          ),
            SizedBox(height: 20,),
            //爱好
            Column(
              children: _getHobby(),//调用
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 40,
              child:  RaisedButton(
                child: Text("修改"),
                onPressed: (){
                  print(this.sex);
                  print(this.username);
                  print(this.hobby);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),
          ],
        )
      ),
    );
  }
}
