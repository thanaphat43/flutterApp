import 'package:flutter/material.dart';
import './page1/PageRoom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.orange[900],
      //   automaticallyImplyLeading: true,
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 20),
      //       child: Text("ชื่อผู้ใช้"),
      //     ),
      //     Icon(Icons.more_vert),
      //   ],
      // ),

      // drawer: Drawer(
      //   child: ListView(
      //     children: const <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(color: Color(0xffCA492D)),
      //         child: Text(
      //           'My logo',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 24,
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 20),
      //         child: Text(
      //           'หน้าแรก',
      //           style: TextStyle(color: Colors.black, fontSize: 25),
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 20),
      //         child: Text(
      //           'ออกแบบ',
      //           style: TextStyle(color: Colors.black, fontSize: 25),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                width: 300,
                height: 40,
                child: Text('Room Temperature',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        color: const Color(0xffCA492D),
                        fontSize: 32)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 15),
          //   child: Card(
          //     child: InkWell(
          //       splashColor: Colors.blue.withAlpha(30),
          //       onTap: () {
          //         debugPrint('Card tapped.');
          //       },
          //       child: const Image(
          //         image: AssetImage('weather.jpg'),
          //         width: 300,
          //         height: 300,
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                child: Text('ห้องที่สามารถเข้าถึงได้',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 25)),
              ),
            ),
          ),
          SizedBox(
            height: 30,
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
                    Navigator.pushNamed(context, '/AllowRoom');
                  },
                  child: const Image(
                    width: 300,
                    height: 150,
                    image: AssetImage('server_room.jpg'),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
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
                    Navigator.pushNamed(context, '/AllowRoom');
                  },
                  child: const Image(
                    width: 300,
                    height: 150,
                    image: AssetImage('IT_Room.jpg'),
                  ),
                ),
              ),
            ),
          ),
          // Footer(
          //   child: Container(
          //       //  decoration: BoxDecoration(),

          //     color: Colors.orange[900],
          //     child: Center(
          //       child: Text(
          //         'room temperature',
          //         style: TextStyle(color: Colors.white, fontSize: 25),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
      // bottomNavigationBar: buildBottombar(),
    );
  }
  // BoxDecoration buildBackgroud() {
  //   return BoxDecoration(
  //       gradient: LinearGradient(begin: Alignment.topCenter, colors: [
  //     Colors.orange[900],
  //     Colors.orange[800],
  //     Colors.orange[400]

  //   ]

  //   ));
  // }
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
