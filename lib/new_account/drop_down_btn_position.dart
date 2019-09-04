import 'package:flutter/material.dart';

class DropdownBtnPosition extends StatefulWidget {
  DropdownBtnPosition({Key key}) : super(key:key);
  @override
  _DropdownBtnPositionState createState() => _DropdownBtnPositionState();
}

class _DropdownBtnPositionState extends State<DropdownBtnPosition> {
  static const menuItems = <String> [
    'Employee',
    'HR',
    "GM",
    'Supervisor'
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
            hint: Text("Select Employee Position"),
            isExpanded: true,
            onChanged: ((String chosen) {
              this.setState(() {
                _btnSelectedValue = chosen;
              });
            }),
          ),
          leading: Icon(Icons.account_box),
        ),
      ],
    );
  }
}
