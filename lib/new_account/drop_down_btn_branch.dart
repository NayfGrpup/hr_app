import 'package:flutter/material.dart';

class DropdownBtnBranch extends StatefulWidget {
  DropdownBtnBranch({Key key}) : super(key:key);
  @override
  _DropdownBtnBranchState createState() => _DropdownBtnBranchState();
}

class _DropdownBtnBranchState extends State<DropdownBtnBranch> {
  static const menuItems = <String> [
    'جمهورية مصر العربية (القاهرة)',
    'المملكة الأردنية الهاشمية (عمان)',
    "جزر القمر (موروني)",
    'المملكة العربيةالسعودية (الرياض)',
    'قطر (الدوحة)',
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
            hint: Text("Your Branch"),
            isExpanded: true,
            onChanged: ((String chosen) {
              this.setState(() {
                _btnSelectedValue = chosen;
              });
            }),
          ),
          leading: Icon(Icons.account_balance),
        ),
      ],
    );
  }
}
