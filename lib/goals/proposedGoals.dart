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
        "semaine", Colors.red));
    goals.add(new Goal("Manger des asperges 1 fois par semaine pendant 3 "
        "semaine", Colors.red));

    return ListView.builder(
      itemCount: goals.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(goals[index].goalSentence),
          ),
        );
      },
    );
  }
}

