import 'package:flutter/material.dart';
class Other extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title:Text("Others"),
      ),
      body: Form(
        key: null,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 15.0, right: 20.0),
              child: Container(
                child: TextFormField(
                  controller: null,
                  keyboardType: TextInputType.multiline,
                  textDirection: TextDirection.ltr,
                  maxLines: 12,
                  decoration: InputDecoration(
                    labelText: 'Request Details:',
                    hintText: 'more details...',
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
      ),
    );
  }


}