import 'package:flutter/material.dart';
import 'GoalsList.dart';
import 'goalObject.dart';

class ProposedGoals extends StatefulWidget {
  @override
  ProposedGoalsState createState() => ProposedGoalsState();
}

class ProposedGoalsState extends State<ProposedGoals> with
    AutomaticKeepAliveClientMixin<ProposedGoals> {
  List<Goal> goals;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    goals = GoalsList().getList();
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
              title: Text(goals[index].goalSentence,
                  textAlign: TextAlign.center),
              onTap: () => setState(()=>onCardTap(goals[index]))
          ),
        );
      },
    );
  }

  onCardTap(Goal goal){
    goal.changeStatus(!goal.status);
    print("taped " + goal.goalSentence);
  }

  getImageSelectedOrNot(bool selected){
    if(!selected)
      return "not_validated.png";
    else
      return "validated.png";
  }


}

