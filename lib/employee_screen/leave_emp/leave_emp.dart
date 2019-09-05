import 'package:flutter/material.dart';
import 'package:hr_project/employee_screen/leave_emp/drop_down_btn_expense.dart';
import 'package:hr_project/employee_screen/leave_emp/drop_down_btn_leave_type.dart';

class Leave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("Leave"),
      ),
      body: _LeaveBody(),
    );
  }
}

class _LeaveBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: null,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DropDownBtnLeaveTpe(),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, left: 15.0, right: 20.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: TextFormField(
                controller: null,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: 'From:',
                  labelStyle: TextStyle(color: Colors.purple),
                  icon: Icon(Icons.event),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, left: 15.0, right: 20.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: TextFormField(
                controller: null,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: 'To:',
                  labelStyle: TextStyle(color: Colors.purple),
                  icon: Icon(Icons.event),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, left: 15.0, right: 20.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: TextFormField(
                controller: null,
                keyboardType: TextInputType.text,
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                  labelText: 'Destination',
                  hintText: 'Where To ..',
                  labelStyle: TextStyle(color: Colors.purple),
                  icon: Icon(Icons.location_on),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          DropDownBtnExpense(),
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, left: 15.0, right: 20.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: TextFormField(
                controller: null,
                keyboardType: TextInputType.multiline,
                textDirection: TextDirection.ltr,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Details:',
                  hintText: 'reason, more details...',
                  labelStyle: TextStyle(color: Colors.purple),
                  icon: Icon(Icons.info),
                ),
              ),
            ),
          ),
          ButtonTheme(
            minWidth: 100.0,
            height: 48.0,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: RaisedButton(
                onPressed: () => debugPrint("hello"),
                child: Text('SUBMIT REQUEST',
                  style: TextStyle(
                      fontSize: 17.0
                  ),),
                color: Colors.purple.shade900,
                textColor: Colors.white,
                shape: StadiumBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
