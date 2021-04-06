import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        backgroundColor: Colors.white,
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
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
  final dummyitems = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq2GYqyni8EzISIFJjuE0BcxvORsMyv_iNFQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNPAiK49sLhYHzBIMZiqqtRn6gSZ5v9E35Cw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCQr8y5Bf9z1jRHOXE3Ne0kVSbZ77tpKor4Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpe_P0mWLXhKjFBQrkudo-jqboiVXJe84HPA&usqp=CAU',
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
          children: [
            GestureDetector(
              onTap: () {
                print('클릭!');
                _showDialog();
              },
              child: Column(
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  Text('택시'),
                ],
              ),
            ),
            Column(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Text('택시'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HOfnljkolDL6gcl08VUEbp-t20ouZ82pIw&usqp=CAU',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Text('택시'),
              ],
            ),
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
        autoPlayInterval: Duration(milliseconds: 800),
        // 높이 400
        height: 400.0,
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
