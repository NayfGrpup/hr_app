import 'package:flutter/material.dart';
import 'package:hr_project/employee_screen/govennment_relation/drop_down_btn_government.dart';
class Governments extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title:Text("Government"),
      ),
      body: _GovernmentBody(),
    );
  }
}

class _GovernmentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: null,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DropDownBtnRequest(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DropDownBtnExpenseOn(),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Note: The Company will see your Government Relations and deduce it',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0,
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
