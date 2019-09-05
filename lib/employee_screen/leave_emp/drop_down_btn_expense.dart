import 'package:flutter/material.dart';

class DropDownBtnExpense extends StatefulWidget {
  DropDownBtnExpense({Key key}) : super(key:key);
  @override
  _DropDownBtnExpenseState createState() => _DropDownBtnExpenseState();
}

class _DropDownBtnExpenseState extends State<DropDownBtnExpense> {
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
            hint: Text("Expense On:"),
            isExpanded: true,
            onChanged: ((String chosen) {
              this.setState(() {
                _btnSelectedValue = chosen;
              });
            }),
          ),
          leading: Icon(Icons.attach_money),
        ),
      ],
    );
  }
}
