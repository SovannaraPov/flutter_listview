import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('This is my home'),
            subtitle: Text('#123 St 345 SiemReap Cambodia'),
            onTap: () {
              goToDetail(context, 'My Home');
            },
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text('This is my office'),
            subtitle: Text('#234 St 333 Phnom Penh Cambodia'),
            onTap: () {
              goToDetail(context, 'My Office');
            },
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('This is my school'),
            subtitle: Text('#567 St 444 SiemReap Cambodia'),
            onTap: () {
              goToDetail(context, 'My School');
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Office')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
        ],
        onTap: (index) {
          if (index == 0)
            goToDetail(context, 'Home');
          else if (index == 1)
            goToDetail(context, 'Office');
          else if (index == 2)
            goToDetail(context, 'School');
        },
      ),
    );
  }

  void goToDetail(BuildContext context, String title) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Detail(title: title);
    }));
  }
}

class Detail extends StatelessWidget {
  final String title;

  const Detail({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(),
    );
  }
}
