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
            _myListView(context)
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
               height: 50,
               child: ListView.builder(
                 itemCount: goals[index].statusL.length,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context, indexCheck){
                   return Container(
                       width: MediaQuery.of(context).size.width/(goals[index]
                           .statusL.length),
                       padding: EdgeInsets.all(15.0),
                       child: Container(
                         child: Row(
                           children: <Widget>[
                             new Image.asset("assets/" + goals[index]
                                 .statusL[indexCheck].getStatusValue() + ".png",
                                 width: 20, height: 20),
                           ],
                         ),
                       )
                   );
                 }
                 )
             )
            ],
          ),
        );
      },
    );
  }

  
}

