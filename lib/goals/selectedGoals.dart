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
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
              leading: new Image.asset(
                  "assets/" + goals[index].image,
                  width: 30,
                  height: 30
              ),
              trailing: new Image.asset (
                  "assets/" + getImageSelectedOrNot(goals[index].status),
                  width: 20,
                  height: 20
              ),
              title:
                Text(goals[index].goalSentence,
                textAlign: TextAlign.center)
          ),
        );
      },
    );
  }

  getImageSelectedOrNot(bool selected){
    if(!selected)
      return "close.png";
    else
      return "tick.png";
  }
}

