import 'package:flutter/material.dart';

class DropDownBtnAmendment extends StatefulWidget {
  DropDownBtnAmendment({Key key}) : super(key:key);
  @override
  _DropDownBtnAmendmentState createState() => _DropDownBtnAmendmentState();
}

class _DropDownBtnAmendmentState extends State<DropDownBtnAmendment> {
  static const menuItems = <String> [
    'Personal Work',
    'System Error',
    "Came Late",
    'Forget To Punch In/Out',
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
            hint: Text("Amendment For:"),
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
