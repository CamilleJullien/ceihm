import 'package:ceihm/data/user.dart';
import 'package:ceihm/home.dart';
import 'package:ceihm/questionnaire/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ceihm/goals/goals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page1 extends StatefulWidget {
  Page1({Key key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var _formKey = GlobalKey<FormState>();
  bool ironValue = User.hasIronDeficiency;
  bool calciumValue = User.hasCalciumDeficiency;
  bool magnesiumValue = User.hasMagnesiumDeficiency;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Etude des carences"),
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
              "Avez vous des carences ?",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Form(key: this._formKey, child: _myListContainer()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              /*  RaisedButton(
                  "text",
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                ),*/
                RaisedButton(
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
                    child: Text(
                        'Retour au menu',
                        style: TextStyle(fontSize: 20)
                    ),
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()),
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
                    child: Text(
                        'Question suivante',
                        style: TextStyle(fontSize: 20)
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }

  Widget _myListContainer() {
    return Column(children: <Widget>[
      new CheckboxListTile(
        title: Text("Fer"),
        value: ironValue,
        onChanged: (bool value) {
          setState(() {
            ironValue = value;
            User.hasIronDeficiency = value;
          });
        },
      ),
      new CheckboxListTile(
        title: Text("Calcium"),
        value: calciumValue,
        onChanged: (bool value) {
          setState(() {
            calciumValue = value;
            User.hasCalciumDeficiency = value;
          });
        },
      ),
      new CheckboxListTile(
        title: Text("Magnesium"),
        value: magnesiumValue,
        onChanged: (bool value) {
          setState(() {
            magnesiumValue = value;
            User.hasMagnesiumDeficiency = value;
          });
        },
      )
    ]);
  }
}
