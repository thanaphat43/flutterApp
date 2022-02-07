import 'package:flutter/material.dart';
import 'PageRoom.dart';
import './screens/launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with automaticallyImplyLeading = "true" (Default)

      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        automaticallyImplyLeading: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("ชื่อผู้ใช้"),
          ),
          Icon(Icons.more_vert),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xffCA492D)),
              child: Text(
                'My logo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'หน้าแรก',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'ออกแบบ',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ],
        ),
      ),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                width: 300,
                height: 80,
                child: Text('Room Temperature',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        color: const Color(0xffCA492D),
                        fontSize: 32)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    debugPrint('Card tapped.');
                  },
                  child: const Image(
                    width: 300,
                    height: 150,
                    image: AssetImage('Images/weather.jpg'),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                width: 300,
                height: 60,
                child: Text('ห้องที่สามารถเข้าถึงได้',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 25)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Card tapped.');
                },
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/t');
                  },
                  child: const Image(
                    width: 300,
                    height: 150,
                    image: AssetImage('images/server_room.jpg'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: Launcher(),
    );
  }

  BottomNavigationBar buildBottombar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.infoCircle),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.userAlt),
          label: 'Profile',
        ),
      ],
      // currentIndex: _selectedIndex,
      // onTap: _onItemTapped,
    );
  }
}
