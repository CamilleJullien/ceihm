import 'package:flutter/material.dart';
import 'GoalsList.dart';
import 'goalObject.dart';

class SelectedGoals extends StatefulWidget {
  @override
  SelectedGoalsState createState() => SelectedGoalsState();
}

class SelectedGoalsState extends State<SelectedGoals> {
  List<Goal> goals;

  @override
  void initState() {
    super.initState();
    goals = GoalsList().getSelectedGoals();
  }

  @override
  Widget build(BuildContext context){
    return Container(
        child: Stack(
          children: <Widget>[
            isThereObjectifs(context)
          ],
        )
    );
  }


  Widget _myListView(BuildContext context) {
    return ListView.builder(
      itemCount: goals.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              ListTile(
                  leading: new Image.asset(
                      "assets/" + goals[index].image,
                      width: 30,
                      height: 30
                  ),
                  title:
                  Text(goals[index].goalSentence,
                      textAlign: TextAlign.center)
              ),
             Container(
               margin: EdgeInsets.only(top: 10.0, left: 15.0),
               width: double.infinity,
               child: Text("Progression :", textAlign: TextAlign.start),
             ),
             Container(
               height: 50,
               width: double.infinity,
               alignment: Alignment.center,
               child: ListView.builder(
                    itemCount: goals[index].statusL.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, indexCheck){
                      return Container(
                        margin: EdgeInsets.all(10.0),
                        padding: myMargin(indexCheck, goals[index].howMuch),
                        decoration: myBoxDecoration(indexCheck, goals[index].howMuch),
                        child: new Image.asset("assets/" + goals[index]
                              .statusL[indexCheck].getStatusValue() + ".png",
                              width: 20, height: 20),
                      );
                    }
                    ),
             )
            ],
          ),
        );
      },
    );
  }

  myMargin(index, weeks){
    if(index%weeks == 0 && index != 0) {
      return EdgeInsets.only(
        left: 20.0,
      );
    }
    else
      return EdgeInsets.all(0);
  }

  myBoxDecoration(index, weeks){
    if(index%weeks == 0 && index != 0){
      return BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Color.fromRGBO(113, 114, 143, 100)
          )
        )
      );
    }
    else{
      BoxDecoration();
    }

  }

  isThereObjectifs(context){
    print(goals.length);
    if(goals.length != 0)
      return _myListView(context);
    else {
      return Column(
        children : <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:  Text("Vous n'avez pas sélectionnez d'objectifs, aller "
                "dans l'onglet \"proposés\" pour le faire !",
                textAlign: TextAlign.center)
          ),
          Image.asset("assets/right-arrow.png", width: 50, height:50)
        ]
      );
    }
  }

  
}

