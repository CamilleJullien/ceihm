import 'package:ceihm/goals/selectedGoals.dart';
import 'package:flutter/material.dart';
import 'proposedGoals.dart';

class Goals extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "En cours",),
              Tab(text: "Proposés"),
            ],
          ),
          centerTitle: true,
          title: Text('Objectifs'),
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
        body: TabBarView(
          children: [
            SelectedGoals(),
            ProposedGoals(),
          ],
        ),
      ),
    );
  }
}

