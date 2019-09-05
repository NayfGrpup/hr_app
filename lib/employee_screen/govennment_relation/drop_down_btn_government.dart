import 'package:flutter/material.dart';

class DropDownBtnRequest extends StatefulWidget {
  DropDownBtnRequest({Key key}) : super(key:key);
  @override
  _DropDownBtnRequestState createState() => _DropDownBtnRequestState();
}

class _DropDownBtnRequestState extends State<DropDownBtnRequest> {
  static const menuItems = <String> [
    'Iqama Issuance',
    'Change Iqama Information',
    "Multiple Visa",
    'CancelVisa',
    'Change Profession',
    'Governemnt TransferRelation'
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

class DropDownBtnExpenseOn extends StatefulWidget {
  DropDownBtnExpenseOn({Key key}) : super(key:key);
  @override
  _DropDownBtnExpenseOnState createState() => _DropDownBtnExpenseOnState();
}

class _DropDownBtnExpenseOnState extends State<DropDownBtnExpenseOn> {
  static const menuItems = <String> [
    'Company',
    'Employee',
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
