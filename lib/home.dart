import 'package:flutter/material.dart';
import 'synthesis.dart';
import 'package:ceihm/goals/goals.dart';


class Home extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        title: Text('Accueil'),
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
              child:  Text(
                'Bienvenue',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              child:Text(
                // '$_counter',
                // style: Theme.of(context).textTheme.display1,
                'cette application vous permettra de mieux gérer votre alimentation.'
                ,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 160.0,
                    height: 130.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Questionnaires",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),),
                      color: Colors.amber,
                    ),
                  ),

                  ButtonTheme(
                    minWidth: 160.0,
                    height: 130.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Aliments",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(13),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 160.0,
                    height: 130.0,
                    child: RaisedButton(
                      onPressed: null,
                      child: Text(
                        "Objectifs",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.amber,
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 160.0,
                    height: 130.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Carences",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),

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
