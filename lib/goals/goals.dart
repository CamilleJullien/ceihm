import 'package:flutter/material.dart';
import 'proposedGoals.dart';

class Goals extends StatefulWidget{
  @override
  _Goals createState() => _Goals();
}

class _Goals extends State<Goals> with SingleTickerProviderStateMixin{

  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              new Tab(text: "En cours"),
              new Tab(text: "Proposés")
            ],
            controller: _tabController,
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
        body: new TabBarView(
          children: <Widget> [
            new Text("En cours"),
            ProposedGoals(),
          ],
          controller: _tabController,
        ),
    );
  }
}

