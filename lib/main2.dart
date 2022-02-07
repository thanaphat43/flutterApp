import 'package:flutter/material.dart';

import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class MyAlert1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: RawMaterialButton(
        child: Icon(
          Icons.settings_sharp,
          color: Colors.pink,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("ตั้งค่าแจ้งเตือนอุณหภูมิ"),
    content: Setting(context),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
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

void setState(Null Function() param0) {}
