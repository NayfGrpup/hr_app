import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_project/employeeScreen/cardStamp/cardStamp.dart';
import 'package:hr_project/employeeScreen/profile/profiles.dart';
import 'package:hr_project/login/login.dart';
import 'Attendance/AttendanceEmp.dart';
import 'GovennmentRelation/govenment.dart';
import 'ITRequests/IT.dart';
import 'Others/others.dart';
import 'Requests/myRquests.dart';
import 'Resignation/resignation.dart';
import 'cashAdvance/cashAdvances.dart';
import 'leaveEmp/leaveEmp.dart';

class HomeEmp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900.withOpacity(0.9),
        title: Text("Nayf Group"),
      ),
      body: new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "empl.png",
                ),
                fit: BoxFit.cover)),
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            Container(
              child: new Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Services",
                          style: TextStyle(
                              color: Colors.grey.shade800, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.airplanemode_active,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Leave",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => leave())),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.attach_money,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Cash Advance",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  cashAdances())),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.credit_card,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Card Stamp",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => cardStamp())),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Attendance Amendment",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => attendance())),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.computer,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "IT Requests",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => iT())),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Govenment Relation",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => govenments())),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.assignment_return,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Resignation",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  resignation())),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.insert_drive_file,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Others",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => other())),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Requests",
                          style: TextStyle(
                              color: Colors.grey.shade800, fontSize: 16.0),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.crop_original,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "My Requests",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => myRequests())),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Communicate",
                          style: TextStyle(
                              color: Colors.grey.shade800, fontSize: 16.0),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Share",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      /*onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => myRequests())),*/
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.contact_mail,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Contact With Us",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      /*onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => myRequests())),*/
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Settings",
                          style: TextStyle(
                              color: Colors.grey.shade800, fontSize: 16.0),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_circle,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => profile())),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.grey.shade600,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Log Out",
                              style: TextStyle(
                                  color: Colors.grey.shade900.withOpacity(0.9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                      onTap: () => Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => LogIn()),
                          (Route<dynamic> route) => false),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
