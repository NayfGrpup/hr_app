import 'package:flutter/material.dart';

class DropDownBtnSelectIt extends StatefulWidget {
  DropDownBtnSelectIt({Key key}) : super(key:key);
  @override
  _DropDownBtnSelectItState createState() => _DropDownBtnSelectItState();
}

class _DropDownBtnSelectItState extends State<DropDownBtnSelectIt> {
  static const menuItems = <String> [
    'Email Account',
    'Shared Folder',
    "System",
    'No Problem'
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems.map(
          (chosen) => DropdownMenuItem<String>(
        value: chosen,
        child: Text(chosen),
      )
  ).toList();
  String _btnSelectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
//          contentPadding: EdgeInsets.only(right: 22.0),
          title: DropdownButton(
            value: _btnSelectedValue,
            items: _dropDownMenuItems,
            hint: Text("IT Service:"),
            isExpanded: true,
            onChanged: ((String chosen) {
              this.setState(() {
                _btnSelectedValue = chosen;
              });
            }),
          ),
        ),
      ],
    );
  }
}

class DropDownBtnOffice extends StatefulWidget {
  DropDownBtnOffice({Key key}) : super(key:key);
  @override
  _DropDownBtnOfficeState createState() => _DropDownBtnOfficeState();
}

class _DropDownBtnOfficeState extends State<DropDownBtnOffice> {
  static const menuItems = <String> [
    'Computer',
    'Photocopier',
    "Cisco Telephone",
    'Mouse',
    'Printer/Scaner Installation',
    'Monitor',
    'Computer Keyboard',
    'Hand Punch',
    'No Problem'
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems.map(
          (chosen) => DropdownMenuItem<String>(
        value: chosen,
        child: Text(chosen),
      )
  ).toList();
  String _btnSelectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
//          contentPadding: EdgeInsets.only(right: 22.0),
          title: DropdownButton(
            value: _btnSelectedValue,
            items: _dropDownMenuItems,
            hint: Text("Office Equipments:"),
            isExpanded: true,
            onChanged: ((String chosen) {
              this.setState(() {
                _btnSelectedValue = chosen;
              });
            }),
          ),
        ),
      ],
    );
  }
}

class DropDownBtnSelectSoftware extends StatefulWidget {
  DropDownBtnSelectSoftware({Key key}) : super(key:key);
  @override
  _DropDownBtnSelectSoftwareState createState() => _DropDownBtnSelectSoftwareState();
}

class _DropDownBtnSelectSoftwareState extends State<DropDownBtnSelectSoftware> {
  static const menuItems = <String> [
    'Autocad',
    'Adobe Reader',
    "WinRar",
    'System',
    'PDF Writer',
    'MsOffice',
    'Adobe Acrobat Pro',
    'Visio',
    'No Problem'
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems.map(
          (chosen) => DropdownMenuItem<String>(
        value: chosen,
        child: Text(chosen),
      )
  ).toList();
  String _btnSelectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
//          contentPadding: EdgeInsets.only(right: 22.0),
          title: DropdownButton(
            value: _btnSelectedValue,
            items: _dropDownMenuItems,
            hint: Text("Select Software:"),
            isExpanded: true,
            onChanged: ((String chosen) {
              this.setState(() {
                _btnSelectedValue = chosen;
              });
            }),
          ),
        ),
      ],
    );
  }
}