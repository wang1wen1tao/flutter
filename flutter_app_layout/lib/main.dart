
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
       alignment: const FractionalOffset(0.5, 0.8),
       children:<Widget> [
         new CircleAvatar(
            backgroundImage: new NetworkImage('http://jspang.com/static//myimg/blogtouxiang.jpg'),
            radius: 100.0,
         ),
         new Container(
          decoration: new BoxDecoration(
            color:Colors.lightBlue,
          ),
          padding: EdgeInsets.all(0.5),
          child: new Text('1234'),
         )
       ],
    );
    var card = new Card(
      child: new Column(
        children: <Widget>[
          ListTile(title: Text('吉林省，吉林市',style:TextStyle(fontSize: 13.0)),
          subtitle: Text('12321'),
          ),
          new Divider(),
            ListTile(title: Text('吉林省，吉林市',style:TextStyle(fontSize: 13.0)),
            subtitle: Text('12321'),
          ),
          new Divider(),
          ListTile(title:Text('吉林省，吉林市',style:TextStyle(fontSize: 13.0)))
        ],
      ),
    );
    return MaterialApp(
      title:'导航演示1',
      home:Scaffold(
       appBar: AppBar(title: new Text('不灵活的水平布局'),),
       /*body:new Row(
         children:<Widget>[
           new RaisedButton(onPressed: (){},color: Colors.redAccent,child: new Text('红色按钮')),
           new RaisedButton(onPressed: (){},color:Colors.yellowAccent,child:new Text('黄色按钮')),
           new RaisedButton(onPressed: (){},color:Colors.blueAccent,child:new Text('蓝色按钮')),
         ],
         children: <Widget>[
           Expanded(child: new RaisedButton(onPressed: (){},color: Colors.redAccent,child: new Text('红色按钮'))
           ),
           Expanded(child: new RaisedButton(onPressed: (){},color: Colors.yellowAccent,child: new Text('黄色按钮'))
           ),
           Expanded(child: new RaisedButton(onPressed: (){},color: Colors.blueAccent,child: new Text('蓝色按钮')))
         ],
      )*/
     /* body: new Column(
        children: <Widget>[
          Text('123'),
          Text('dsdsadas'),
          Text('123213')
        ],
      ),*/
      body: Center(child:card),
    ));
  }
}
