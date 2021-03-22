

import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
// flutter 앱 시작 부분
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

//stless
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('제목')
      ),
      body: ListView(
        children: [
          TextField(),
          Text('Hello World'),
          ElevatedButton(onPressed: (){}, child: Text('로그인')),
          Image.network('https://cdn.clien.net/web/api/file/F01/11271441/371b7294321821.jpg?w=780&h=30000&gif=true')
        ],
      ),
    );
  }
}  //stless, HomePage, Ctrl + S(병합), return Scaffold(뼈대), appBar: AppBar,
   // title: Text(''), body: Text('')-> Text대신 Column(밑으로 내릴 수있다),
   // Row(옆으로 넘길 수 있다.), ListView(밑으로 스크롤을 내리게 할 수 있다.)
   // Widget: Flutter에서 화면에 그리는 모든것
   // -> Text, Widget 등등

