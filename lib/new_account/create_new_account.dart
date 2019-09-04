import 'package:flutter/material.dart';
import 'package:hr_project/new_account/drop_down_btn_position.dart';
import 'package:hr_project/new_account/drop_down_btn_branch.dart';

class CreateNewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employee'),
        backgroundColor: Colors.purple.shade700,
      ),
      body: _CreateAccountFields(),
    );
  }

}

class _CreateAccountFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: null,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.account_circle),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.mail),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.location_on),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    labelText: 'Job Title',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.business_center),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: DropdownBtnPosition(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    labelText: 'Salary',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.attach_money),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.phone),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.https),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: 'Join Date',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.date_range),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    labelText: 'Department',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.account_balance),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    labelText: 'Nationality',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.flag),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    labelText: 'Passport',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.contacts),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    labelText: 'Military',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.stars),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.text,
                  textDirection: TextDirection.ltr,
                  decoration: InputDecoration(
                    labelText: 'Gender',
                    labelStyle: TextStyle(color: Colors.purple),
                    icon: Icon(Icons.pregnant_woman),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: DropdownBtnBranch(),
              ),
            ),
            ButtonTheme(
              minWidth: 100.0,
              height: 48.0,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: RaisedButton(
                  onPressed: () => debugPrint("hello"),
                  child: Text('SUBMIT REQUEST',
                    style: TextStyle(
                        fontSize: 17.0
                    ),),
                  color: Colors.purple,
                  textColor: Colors.white,
                  shape: StadiumBorder(),
                ),
              ),
            ),
          ],
        ));
  }
}
