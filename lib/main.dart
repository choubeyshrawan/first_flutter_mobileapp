import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

/*
class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App Heading',
      home:new Scaffold(
        appBar: new AppBar(
          title: new Text("Child Heading"),
        ),
        body: new Center (child: new Text("Hello Shrawan !"),),
      )
    );
  }
}
*/
class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My App Heading',
        home:new HomePage(),
      theme: new ThemeData(
       // primarySwatch: Colors.green,
        brightness: Brightness.dark,
        accentColor: Colors.red  //Plus Icon color

      ),
    );
  }
}

class  HomePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {

  String MyTextVal="Hello Shrawan !";

  void _ChangeText()
  {
    setState(() {
      if(MyTextVal.startsWith("H"))
        {
          MyTextVal="Welcome to my First Flutter APP !";
        }
        else{
        MyTextVal="Hello Shrawan !";
      }
    });
  }


  Widget _bodyWidget(){
return new Container(
  padding: const EdgeInsets.all(8.0),
  child: new Center(
    child: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text(MyTextVal, style: new TextStyle(
          fontSize: 20.0
        ),),
    //    new RaisedButton(
       //   child: new Text("Click Me", style: new TextStyle(
      //      color: Colors.white,
      //      fontSize: 12.0
      //    ),),
      //    onPressed: _ChangeText,
      //    color: Colors.red,
     //   )
      ],
    ),
  ),
);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
appBar: new AppBar(
  title: new Text("Home Page Stateful"),
),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _ChangeText,
      ),
    );
  }
}


