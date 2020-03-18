import 'package:flutter/material.dart';
import './components/books.dart';
import './components/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Search(),
    Books(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SUKAN"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Text(
                "More options",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              )
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Your books'),
              onTap: () => {
                Navigator.pop(context)
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Your profile'),
              onTap: () => {
                Navigator.pushNamed(context, "/profile")
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => {
                Navigator.pushNamed(context, "/profile")
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _children[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text("Books"),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() => {
      _currentIndex = index
    });
  }
}