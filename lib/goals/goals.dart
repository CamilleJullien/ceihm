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

    setState((){
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              new Tab(text: "En cours"),
              new Tab(text: "Proposé")
            ],
            controller: _tabController,
          ),
          title: Text('Flutter Tabs Example'),
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

