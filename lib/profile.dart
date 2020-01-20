import 'package:ceihm/questionnaire/page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Profile extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
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
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(15),
                child:Column(
                  children: <Widget>[

                    Container(
                        margin: EdgeInsets.all(10),
                        child:Container(

                          child: Row(
                            children: <Widget>[
                              Text(
                                "Email",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )

                            ],
                          ),
                        )

                    ),
                    Container(
                      child: TextField(

                      ),
                    ),

                  ],
                )

            ),
            Column(
              children: <Widget>[

                Container(
                    margin: EdgeInsets.all(20),
                    child:Row(

                      children: <Widget>[

                        Text(
                          "Inscription newsletter",
                          style: TextStyle(
                            fontSize: 20.0,
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
                          groupValue: 1 ,
                          onChanged: null,
                          activeColor: Colors.blue,
                        ),
                        Text("Oui"),

                        Radio(
                          value: 0,
                          groupValue: 1,
                          onChanged: null,
                        ),
                        Text("Non"),
                      ],

                    )

                )
              ],
            ),

            Container(
                margin: EdgeInsets.all(20),
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
                child:Row(

                  children: <Widget>[
                    Row(

                      children: <Widget>[

                  Radio(
                  value: 0,
                  groupValue: 1,
                  onChanged: null,
                ), Text("Aucune")
                      ],
                    ),
                    Row(

                      children: <Widget>[

                      Radio(
                      value: 0,
                      groupValue: 1,
                      onChanged: null,
                    ), Text("Fréquente")
                      ],
                    ),
                    Row(

                      children: <Widget>[

                        Radio(
                          value: 0,
                          groupValue: 1,
                          onChanged: null,
                        ), Text("Très fréquente")
                      ],
                    )

                  ],
                )
            ),
            //new Divider(height: 5.0, color: Colors.black),


            //new Divider(height: 5.0, color: Colors.indigo),

            Container(
                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child:   Row(

                children: <Widget>[

                  Text(
                    "Historique",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )
                ],
              )

            ),
            InkWell(
              child: Text("Historique 1"),
              onTap: null ,

            ),
            Container(
              margin: EdgeInsets.all(13),
              child:
              ButtonTheme(
                minWidth: 120.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Objectifs",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  color: Colors.amber,
                ),
              ) ,
            ),
            Container(
              margin: EdgeInsets.all(13),
              child:
              ButtonTheme(
                minWidth: 120.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Valider",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  color: Colors.amber,
                ),
              ) ,
            )

          ],
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
