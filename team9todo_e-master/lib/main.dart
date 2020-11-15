/*
import 'package:flutter/material.dart';
 */

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Choice> choices = [
    Choice('月', ['現代文', '古典', 'コミュ英', '英語表現', '数学Ⅰ']),
    Choice('火', ['コミュ英', '数学A', '倫理', '化学', '化学']),
    Choice('水', ['生物', '現代文', '体育', '英語表現', '休講']),
    Choice('木', ['数学Ⅰ', '数学Ⅰ', '美術', '美術', '現代文']),
    Choice('金', ['数学A', '体育', '生物', '古典', '政治経済']),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: AppBar(
              title: const Text('時間割・to do'),
              bottom: TabBar(
                isScrollable: false,
                tabs: choices.map(
                      (Choice choice) {
                    return Tab(
                      text: choice.day,
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Container(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin: const EdgeInsets.all(0.5),
                      child: Container(
                        margin: const EdgeInsets.all(0.5),
                        width: 300,
                        height: 50,
                        child: ListTile(
                          title: Text(
                              '${index + 1}限 : ' + choice.classes[index]
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 5,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}



class Choice {
  Choice(this.day, this.classes);

  final String day;
  final List<String> classes;
}

*/
/*

import 'package:flutter/material.dart';




void main() => runApp(
  MaterialApp(home: MyApp()),
);

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  var _checkBox1 = false;
  var _checkBox2 = false;
  var _checkBox3 = false;
  var _checkBox4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[

            CheckboxListTile(
              value: _checkBox1,
              title: Text(
                '英単語テスト（5分）     10/9',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('単語集p.120-126'),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {
                setState(() {
                  _checkBox1 = value;
                });
              },
            ),

            CheckboxListTile(
              value: _checkBox2,
              title: Text(
                '漢字テスト    （5分）     10/9',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('参考書p.12-16'),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {
                setState(() {
                  _checkBox2 = value;
                });
              },
            ),

            CheckboxListTile(
              value: _checkBox3,
              title: Text(
                '数学小テスト（10分）  10/10',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('教科書p.20-21'),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {
                setState(() {
                  _checkBox3 = value;
                });
              },
            ),

            CheckboxListTile(
              value: _checkBox4,
              title: Text(
                '漢字テスト    （5分）     10/10',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('参考書p.16-20'),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {
                setState(() {
                  _checkBox4 = value;
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}

 */


*/