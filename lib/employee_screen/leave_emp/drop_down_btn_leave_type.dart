import 'package:flutter/material.dart';

class DropDownBtnLeaveTpe extends StatefulWidget {
  DropDownBtnLeaveTpe({Key key}) : super(key:key);
  @override
  _DropDownBtnLeaveTpeState createState() => _DropDownBtnLeaveTpeState();
}

class _DropDownBtnLeaveTpeState extends State<DropDownBtnLeaveTpe> {
  static const menuItems = <String> [
    'Normal',
    'Annual',
    "Sick",
    'Marriage'
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
            hint: Text("Leave Type (Select The Reason):"),
            isExpanded: true,
            onChanged: ((String chosen) {
              this.setState(() {
                _btnSelectedValue = chosen;
              });
            }),
          ),
          leading: Icon(Icons.airplanemode_active),
        ),
      ],
    );
  }
}
