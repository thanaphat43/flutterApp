import 'package:fl_line_chart_example/page/home_page.dart';
import 'package:flutter/material.dart';
// import 'page/home_page.dart';
// import 'main2.dart';
import '../screens/launcher.dart';

class PageRoom extends StatelessWidget {
  PageRoom();

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
                'ออกระบบ',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
      // App bar End

      body: ListView(
        children: [
          Column(
            //สร้าง Child ซึ่งเป็นcloumn
            children: <Widget>[
              //สร้าง childen สำหรับ widget
              bulidTitel('ห้อง'), // )
              bulidTextTemp(), // )
              buildDisplaychat(), //
            ],
          ),
        ],
      ),
    );
  }

  Row buildDisplaychat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          //สร้างpadding
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                width: 250,
                height: 50,
                child: Text(
                  'กราฟอุณหภูมิห้อง',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              Container(
                width: 300,
                height: 300,
                child: HomePage(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row bulidTextTemp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          //สร้างpadding
          padding: EdgeInsets.symmetric(horizontal: 20),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'อุณหภูมิ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              Card(
                  child: Text('48 องศา',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                      ))),
            ],
          ),
        ),
      ],
    );
  }

  Row bulidTitel(String textTiTel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          //สร้างpadding
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            children: [
              Container(
                width: 300,
                height: 80,
                child: Center(
                  child: Text(
                    textTiTel,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              // MyAlert1(),
            ],
          ),
        ),
      ],
    );
  }
}
