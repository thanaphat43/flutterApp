import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:settings_ui/settings_ui.dart';

import '../PageRoom.dart';

class MyAlert1 extends StatelessWidget {
  MyAlert1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text("ตั้งค่าการแจ้งเตือนอุณหภูมิ"),
            tiles: [
              // SettingsTile(
              //   title: Text("ตั้งค่าแจ้งเตือนอุณหภูมิ"),
              // ),
              SettingsTile.switchTile(
                title: Text("แจ้งเตือนอุณหภูมิห้องที่สามารถเข้าถึงได้"),
              ),
            ],
          ),
          // SettingsSection(
          //   tiles: [
          //     SettingsTile.switchTile(
          //       title: Text("แจ้งเตือนอุณหภูมิสูงต่ำเกินมาตรฐาน"),
          //     ),
          //   ],
          // ),
          SettingsSection(
          
            tiles: [
         
              SettingsTile(
                  title: Text("เกี่ยวกับแอพพลิเคชั่น"),
                  // leading: Icon(Icons.fingerprint),
                  onPressed: (BuildContext context) {
                    Navigator.pushNamed(context, '/about');
                  }),
            ],
          ),
        ],
      ),
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

  Row Setting(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('Open'),
        Switch(
            activeColor: Theme.of(context).accentColor, onChanged: (newVal) {}),
        Text('Open'),
      ],
    );
  }
}
