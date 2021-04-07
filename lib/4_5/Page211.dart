import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/4_5/image.text.dart';
import 'package:flutter_app/4_5/vehicle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;
  var _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '카카오 T',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.limeAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _pages[_index],
      backgroundColor: Colors.limeAccent,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        backgroundColor: Colors.limeAccent[400],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '이용서비스',
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            label: '내정보',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final vehicles = [
    Vehicle(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
        '택시'),
    Vehicle(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaiUc879ZIGjkzmI8UxFMkAFqzHF7gVuq8Og&usqp=CAU',
        '오토바이'),
    Vehicle(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRICrqVjMzmmrrDpmhtOqEHi10i0mlQyhLFCQ&usqp=CAU',
        '대리'),
    Vehicle(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
        '택시'),
  ];
  final dummyitems = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeiBIl_VM4KBl7glxywHA4R_EFyNY3W-BIxQ&usqp=CAU',
    '',
    '',
    '',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST7o8_NaM5rHxg6-wRl5pFCPTKTSB6eyO0HQ&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: vehicles.map((e) {
            return ImageText(e.imageUrl, e.name);
          }).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageText(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
                '택시'),
            ImageText(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
                '택시'),
            ImageText(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
                '택시'),
            SizedBox(
              height: 80,
              width: 80,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlayInterval: Duration(milliseconds: 1500),
        // 높이 400
        height: 300.0,

        autoPlay: true,
      ),
      items: dummyitems.map((url) {
        // 다섯 페이지
        return Builder(
          builder: (BuildContext context) {
            // context를 사용 하고자 할 때
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(3, (i) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트]이것은 공지사항입니다.'),
      );
    });
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("클릭했냐?"),
          content: new Text("닫냐?"),
          actions: <Widget>[
            new TextButton(
              child: new Text("닫았어"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '이용서비스',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '내정보',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
