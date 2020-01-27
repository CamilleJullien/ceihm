import 'package:ceihm/data/user.dart';
import 'package:ceihm/questionnaire/page1.dart';
import 'package:ceihm/questionnaire/page2.dart';
import 'package:ceihm/questionnaire/page4.dart';
import 'package:ceihm/synthesis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class Page3 extends StatefulWidget {
  Page3({Key key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var _formKey = GlobalKey<FormState>();
  String dropdownValue = User.fatigue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 3/11"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment(-1.0, -1.0),
                    colors: <Color>[Color(0xff8d70fe), Color(0xff2da9ef)])),
          ),
        ),
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Ressentez-vous régulièrement de la fatigue ?",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Form(
                  key: this._formKey,
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                        User.fatigue = newValue;
                      });
                    },
                    items: <String>[
                      'Non',
                      'Oui',
                      'Ne sait pas',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  /*  RaisedButton(
                  "text",
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                ),*/
                  FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    textColor: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xff8d70fe),
                            Color(0xff2da9ef),
                          ],
                        ),
                      ),
                      child: Text('Précédent', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page4()),
                      );
                    },
                    textColor: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xff8d70fe),
                            Color(0xff2da9ef),
                          ],
                        ),
                      ),
                      child: Text('Suivant', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              )
            ]));
  }
}
