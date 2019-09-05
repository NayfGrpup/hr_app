import 'package:flutter/material.dart';
import 'package:hr_project/employee_screen/it_requests/drop_down_btn_it_requests.dart';
class IT extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title:Text("IT Request"),
      ),
      body: _ItRequestsBody(),
    );
  }
}

class _ItRequestsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: null,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DropDownBtnSelectIt(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DropDownBtnOffice(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DropDownBtnSelectSoftware(),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, left: 15.0, right: 20.0),
            child: Container(
              child: TextFormField(
                controller: null,
                keyboardType: TextInputType.multiline,
                textDirection: TextDirection.ltr,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Details:',
                  hintText: 'reason, more details...',
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
