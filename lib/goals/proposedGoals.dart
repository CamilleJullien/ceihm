import 'package:flutter/material.dart';
import 'goalObject.dart';

class ProposedGoals extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: <Widget>[
            _myListView(context)
          ],
        )
    );
  }


  Widget _myListView(BuildContext context) {

    final List<Goal> goals = new List();
    goals.add(new Goal("Manger des carottes 2 fois par semaine pendant 3 "
        "semaine", Colors.red, "carrot.png"));
    goals.add(new Goal("Manger du poisson 1 fois par semaine pendant 3 "
        "semaine", Colors.red, "fish.png"));

    return ListView.builder(
      itemCount: goals.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
              leading: new Image.asset("assets/" + goals[index].image, width:
              30, height: 30),
              title: Text(goals[index].goalSentence),
              onTap: () => onCardTap(goals[index])
          ),
        );
      },
    );
  }

  onCardTap(Goal goal){
    print("taped " + goal.goalSentence);
  }
}

