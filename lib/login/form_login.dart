import 'package:flutter/material.dart';
import 'package:hr_project/new_account/create_new_account.dart';

class FormLogIn extends StatefulWidget {
  @override
  _FormLogInState createState() => _FormLogInState();
}

class _FormLogInState extends State<FormLogIn> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 20.0, left: 65.0, right: 35.0),
            child: Container(
              alignment: Alignment.center,
              child: TextFormField(
                controller: null,
                keyboardType: TextInputType.text,
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                  labelText: 'Mail',
                  labelStyle: TextStyle(color: Colors.purple),
                  icon: Icon(Icons.account_circle),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                 bottom: 50.0, left: 65.0, right: 35.0),
            child: Container(
              alignment: Alignment.center,
              child: TextFormField(
                controller: null,
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.purple,
                  ),
                  icon: Icon(Icons.https),
                ),
              ),
            ),
          ),
          ButtonTheme(
            minWidth: 180.0,
            height: 45.0,
            child: RaisedButton(
                onPressed: () => debugPrint("hello"),
                child: Text('LOGIN',
                style: TextStyle(
                  fontSize: 25.0
                ),),
                color: Colors.purple,
                textColor: Colors.white,
                shape: StadiumBorder(),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: GestureDetector(
              child: Text(
                "Create New Account"
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => CreateNewAccount())),
            ),
          ),
        ],
      ),
    );
  }
}
