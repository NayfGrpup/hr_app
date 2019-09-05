import 'package:flutter/material.dart';

class DropDownBtnSelectRequest extends StatefulWidget {
  DropDownBtnSelectRequest({Key key}) : super(key:key);
  @override
  _DropDownBtnSelectRequestState createState() => _DropDownBtnSelectRequestState();
}

class _DropDownBtnSelectRequestState extends State<DropDownBtnSelectRequest> {
  static const menuItems = <String> [
    'New',
    'Replacement Of Damaged Or Lost Card',
    "Update Information",
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
            hint: Text("Select Request:"),
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

class DropDownBtnSelectCard extends StatefulWidget {
  DropDownBtnSelectCard({Key key}) : super(key:key);
  @override
  _DropDownBtnSelectCardState createState() => _DropDownBtnSelectCardState();
}

class _DropDownBtnSelectCardState extends State<DropDownBtnSelectCard> {
  static const menuItems = <String> [
    'Stamp',
    'Access Card',
    "Company Badge",
    'Life Card',
    'Bussiness Card'
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
            hint: Text("Select Card:"),
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
