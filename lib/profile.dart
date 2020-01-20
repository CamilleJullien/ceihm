import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'task.dart';
import 'main.dart';


class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .width/2,
                decoration: BoxDecoration(
                  color: Color(0xff5a348b),
                  gradient: LinearGradient(
                      colors: [Color(0xff8d70fe), Color(0xff2da9ef)],
                      begin: Alignment.centerRight,
                      end: Alignment(-1.0, -1.0)
                  ),
                ),
                child: _myHeaderContent(),
              ),
            ),

            Positioned(
              top: 170.0,
              left:18.0,
              child: Container(
                color: Colors.white,
                width: 380,
                height: MediaQuery
                    .of(context)
                    .size
                    .height/1.4,

              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Color(0xff2da9ef),
        foregroundColor: Color(0xffffffff),

        tooltip: 'Increment',
        child: new Text('Valider', style: TextStyle(fontSize: 10.0, color: Colors.white)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Color(0xff2da9ef),
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .width/9,
            ),


          ],
        ),


      ),
    );
  }
  Widget _myHeaderContent(){
    return Align(
      child: ListTile(
        leading: IconButton(icon: Icon(FontAwesomeIcons.clipboardCheck), color: Colors.amber, iconSize:50.0, onPressed: (){},),
        //leading: Text('1', style: TextStyle(fontSize: 50.0, color: Colors.amber)),
        title: Text('Profile', style: TextStyle(fontSize: 30.0, color: Colors.white)),
        subtitle: Text('Remplir votre adresse e-mail et choisir la fréquence de notifications reçues.', style: TextStyle(fontSize: 14.0, color: Colors.white)),
      ),
    );
  }


}

