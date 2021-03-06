import 'package:ceihm/profile.dart';
import 'package:ceihm/questionnaire/page1.dart';
import 'package:ceihm/synthesisHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data/user.dart';
import 'foodListHome.dart';
import 'package:ceihm/goals/goals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Color(0xff5a348b),
                  gradient: LinearGradient(
                      colors: [Color(0xff8d70fe), Color(0xff2da9ef)],
                      begin: Alignment.centerRight,
                      end: Alignment(-1.0, -1.0)),
                ),
               child: _myHeaderContent(),
                ),
              ),
               Positioned(
                 top:190,
                   child:Container(
                     margin: EdgeInsets.all(20),
                     width:MediaQuery.of(context).size.width/1.1,
                     child: setSubtitle()
                 ),
               ),
               Positioned.fill(
               top:140,
               child:Container(
                margin: EdgeInsets.all(10),
                 width:MediaQuery.of(context).size.width/1.1,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 160.0,
                        height: 130.0,
                        child: RaisedButton(
                          onPressed: () {
                            buttonOutput();
                            },
                        child: Text(setQuestionnaireButtonText(), style:
                        TextStyle
                          (fontSize: 20.0, color: Colors.white)),
                        color: Color(0xff8d70fe),
                        ),
                      ),
                       ButtonTheme(
                       minWidth: 160.0,
                       height: 130.0,
                        child: RaisedButton(
                          onPressed: () {Navigator.push(context,
                            MaterialPageRoute(builder: (context) => FoodListHome()),);},
                          child: Text(setButtonText("Aliments"), style:
                          TextStyle
                            (fontSize: 20.0,color: Colors.white)),
                          color: Color(0xff8d70fe),
                        ),
                        ),
                  ],
                  ),
                ),
               ),
              Positioned.fill(
                  top:430,
                  child: Container(
                    width:MediaQuery.of(context).size.width/1.1,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 160.0,
                          height: 130.0,
                          child: updateObjectifs(),
                        ),
                        ButtonTheme(
                          minWidth: 160.0,
                          height: 130.0,
                          child: RaisedButton(
                            onPressed: () {Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SynthesisHome()),);
                            },
                            child: Text(setButtonText("Carences"), style: TextStyle(fontSize: 20.0,
                                color: Colors.white)),
                            color: Color(0xff8d70fe),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
    ],),),

    );
  }

  buttonOutput(){
    if(!User.isQuestionnaireOver)
      return Navigator.push(context,MaterialPageRoute(builder: (context) =>
          Page1()),);
    else
      return Navigator.push(context,MaterialPageRoute(builder: (context) =>
          Profile()),);
  }

  AlertDialog alertDialog(){
    return AlertDialog(
      title: Text("Toto"),
      content: Text("Toto"),
      actions:[
        CupertinoDialogAction(
          child: Text("OK"),
        ),
      ],
      elevation:24,
    );
  }

  setQuestionnaireButtonText(){
    if(User.isQuestionnaireOver){
      return "Mon Profil";
    }
    else {
      return "Questionnaire";
    }
  }
  setButtonText(value){

    if (User.isQuestionnaireOver) {
      return "Mes " + value;
    }
    else{
      return value;
    }
  }

  Widget setSubtitle(){
    if (User.isQuestionnaireOver) {
      return Text("Merci d'avoir répondu au questionnaire, vous avez "
          "maintenant accès à plus de fonctionnalités", textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0));
      /*RaisedButton(
        onPressed: () {
          showCupertinoDialog(
            context: context,
            builder: (_) => CupertinoAlertDialog(
              title: Text("Toto"),
              content: Text("Toto"),
              actions:<Widget>[
                new FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: new Text("OK"))
              ],
            ),
          );
        },
        child : Padding(
          padding: const EdgeInsets.all(8.0),
          child:Text("Votre page d'accueil à changer ! Cliquez pour en savoir plus", textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0,color: Colors.white)),
        ),
        color: Color(0xff8d70fe),
      );*/
    }
    else{
      return Text('Pour accéder à plus de fonctionnalité veuillez remplir le '
          'quizz', textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0));
    }
  }


  Widget updateObjectifs() {
    if (User.isQuestionnaireOver) {
      return RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Goals()),
          );
        },
        child: Text("Objectifs", style: TextStyle(fontSize: 20.0,color: Colors.white)),
        color: Color(0xff8d70fe),
      );
    } else {
      return RaisedButton(
        onPressed: null,
        child: Text("Objectifs", style: TextStyle(fontSize: 20.0,color: Colors.white)),
        color: Color(0xff8d70fe),
      );
    }
  }

  Widget _myHeaderContent() {
    return Align(
      child: ListTile(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.home),
          color: Colors.white,
          iconSize: 50.0,
          onPressed: () {},
        ),
        title: Text('Bienvenue',
            style: TextStyle(fontSize: 30.0, color: Colors.white)),
        subtitle: Text("Identifiez vos carences et sélectionnez des objectifs"
            " pour y remédier !",
            style: TextStyle(fontSize: 15.0, color: Colors.white)),
      ),
    );
  }
}
/*Text('Pour accéder à plus de fonctionnalité veuillez remplir le quizz'),*/