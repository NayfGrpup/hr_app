import 'package:flutter/material.dart';
import 'package:hr_project/employee_screen/card_stamp/drop_down_btn_select.dart';
class CardStamp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title:Text("Card Stamp"),
      ),
      body: _CardBody(),
    );
  }
}

class _CardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: null,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DropDownBtnSelectRequest(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DropDownBtnSelectCard(),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Note: Company will deduct 100SR fro emplyee for damages and lost card',
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
