import 'package:ceihm/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int group = 1;
  int groupe = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profil'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment(-1.0, -1.0),
                  colors: <Color>[
                    Color(0xff8d70fe),
                    Color(0xff2da9ef)
                  ])
          ),
        ),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 20, left: 10, right: 10),
          children: <Widget>[
            Container(
                child:Column(
                  children: <Widget>[
                    Container(
                        child:Row(
                          children: <Widget>[
                            Text("Newsletter",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            hintText: "Entrer votre e-mail",
                          )
                      ),
                    ),
                  ],
                )
            ),
            Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(10,20,30,0),
                    child:Row(
                      children: <Widget>[
                        Text("Inscription à la newsletter",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    )
                ),
                Container(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio(
                            value: 1,
                            groupValue: group ,
                            activeColor: Colors.blue,
                            onChanged: (T){
                              print(T);

                              setState(() {

                                group = T;

                              });
                            }
                        ),
                        Text("Oui"),
                        Radio(
                            value: 2,
                            groupValue: group ,
                            activeColor: Colors.blue,
                            onChanged: (T) {
                              print(T);

                              setState(() {
                                group = T;
                              });
                            }
                        ),
                        Text("Non"),
                      ],
                    )
                )
              ],
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10,20,30,0),
                child:  Row(
                  children: <Widget>[
                    Text(
                      "Notifications",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    )
                  ],
                )
            ),
            Container(
                margin: EdgeInsets.only(left: 10),
                child:
                    Text(
                      "Fréquence de notification pour les objectifs",
                    textAlign: TextAlign.left,style: TextStyle(
                        fontSize: 15.0),
                    )
            ),
            Container(
                child:Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                            value: 3,
                            groupValue: groupe ,
                            activeColor: Colors.blue,
                            onChanged: (V) {
                              print(V);

                              setState(() {
                                groupe = V;
                              });
                            }
                        ), Text("Aucune")
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                            value: 4,
                            groupValue: groupe ,
                            activeColor: Colors.blue,
                            onChanged: (V) {
                              print(V);

                              setState(() {
                                groupe = V;
                              });
                            }
                        ), Text("Fréquente")
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                            value: 5,
                            groupValue: groupe ,
                            activeColor: Colors.blue,
                            onChanged: (V) {
                              print(V);

                              setState(() {
                                groupe = V;
                              });
                            }
                        ), Text("Très fréquente")
                      ],
                    )

                  ],
                )
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              textColor: Colors.white,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(left: 30, right: 30, top: 10.0,
                    bottom: 10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                    Color(0xff8d70fe),
                    Color(0xff2da9ef),
                    ],
                    ),
                  ),
                child: Text(
                  'Valider',
                  style: TextStyle(fontSize: 20)
                  ),
              )
            ),
          ],
        )
      ),
    );
  }

}
