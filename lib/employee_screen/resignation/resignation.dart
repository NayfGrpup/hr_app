import 'package:flutter/material.dart';
class Resignation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title:Text("Resignation"),
      ),
      body: _ResignBody(),
    );
  }
}

class _ResignBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: null,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 17.0, right: 17.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Resignation Request:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 17.0, right: 17.0),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Please Accept this as an official notification of my voluntary resignation from the company, my last working day will be on:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 5.0, left: 15.0, right: 20.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: TextFormField(
                controller: null,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: 'Date',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 15.0, right: 20.0),
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
