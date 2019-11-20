import 'package:flutter/material.dart';
import 'package:re_sew/UI/home_page_body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Re/Sew',
      theme: new ThemeData(
          primaryTextTheme: TextTheme(
              title: TextStyle(
        color: Color(0xff4D5587),
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ))),
      home: MyHomePage(title: 'Re/Sew'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(16, 24, 0, 0),
            child: Text('Current Project',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4D5587),
                )),
          ),
          new CurrentProjectCard(),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text('Projects',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4D5587),
                )),
          ),
          new ProjectCategoriesCard(),
        ],
      ),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    );
  }
}
