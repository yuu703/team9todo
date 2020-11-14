import 'package:flutter/material.dart';
import './mypage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNav',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;

  int _screen = 0;

  List<BottomNavigationBarItem> myBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: const Text('ホーム'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.event),
        title: const Text('カレンダー'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: const Text('マイページ'),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: _screen,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text(
          '時間割',
          style: TextStyle(fontSize: 16),
        ),
      ),
      // ),

      body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _screen = index;
            });
          },
          children: []),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _screen,
        onTap: (index) {
          setState(() {
            _screen = index;

            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.easeOut);
          });
        },
        items: myBottomNavBarItems(),
      ),
    );
  }
}
