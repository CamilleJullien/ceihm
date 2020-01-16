import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'task.dart';
import 'main.dart';
import 'home.dart' ;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FoodList extends StatefulWidget{
  @override
  _FoodList createState() => _FoodList();
}

class _FoodList extends State<FoodList>{

  Material myItems(String heading){
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196f3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(heading, style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  //Icon
                 /* Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size:30.0,
                      ),

                    ),
                  ),*/

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Material myTitle(String heading){
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196f3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Text
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width/1.5,
                        child:Text(heading, style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                    ),
                  ),
                  ),
                  /*Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(heading, style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                    ),
                  ),*/
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:50,
                        width:50,
                        color: Colors.transparent,
                        child: new Container(
                          decoration: new BoxDecoration(
                              color: Color(0xff8d70fe),
                              borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0))),
                          child: new Center(
                            child: Text("tot", textAlign: TextAlign.center,  style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              //backgroundColor: Color(0xff8d70fe)
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget title(String deficiencyName, String deficiencyTime){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          shadowColor: Color(0x802196F3),
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                            child : Container(
                              child: Text(deficiencyName, style: TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              )),
                            ),
                          ),
                        ),
                        /*Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width/1.5,
                            child: Text("toto", style: TextStyle(

                                fontSize: 18.0,
                                color: Colors.black
                            )),

                          ),

                        ),*/
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:50,
                      width:50,
                      color: Colors.transparent,
                      child: new Container(
                        decoration: new BoxDecoration(
                            color: Color(0xff8d70fe),
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(40.0),
                                topRight: const Radius.circular(40.0))),
                        child: new Center(
                          child: Text(deficiencyTime, textAlign: TextAlign.center,  style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .width/2,
                decoration: BoxDecoration(
                  color: Color(0xff5a348b),
                  gradient: LinearGradient(
                      colors: [
                        Color(0xff8d70fe),
                        Color(0xff2da9ef)
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment(-1.0, -1.0)
                  ),
                ),
                child: _myHeaderContent(),
              ),
            ),
            Container(
              child : Positioned(
                top: 170.0,
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height/1.4,
                  child: StaggeredGridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    children: <Widget>[
                      title("Carence en fer", "Fe"),
                      myItems("Viandes rouges"),
                      myItems("Betterave"),
                      myItems("Lentilles"),
                      myItems("Boudin noir"),

                      title("Carence en calcium", "Ca"),
                      myItems("Produits laitiers"),
                      myItems("Légumes verts"),
                      myItems("Poissons"),
                      myItems("Lait de soja"),

                      title("Carence en vitamine D", "D"),
                      myItems("Oeufs"),
                      myItems("Poissons gras"),
                      myItems("Champignon"),
                      myItems("Lait de soja"),

                      title("Carence en iode", "I"),
                      myItems("Fruits de mer"),
                      myItems("Poissons"),
                      myItems("Produits laitiers"),
                      myItems("Algues"),

                      title("Carence en vitamine B12", "B12"),
                      myItems("Crustacés"),
                      myItems("Fromages"),
                      myItems("Poissons"),
                      myItems("Viandes"),
                    ],
                    staggeredTiles: [
                      StaggeredTile.extent(2, 120.0),
                      StaggeredTile.extent(2, 60.0),
                      StaggeredTile.extent(2, 60.0),
                      StaggeredTile.extent(2, 60.0),
                      StaggeredTile.extent(2, 60.0),

                      StaggeredTile.extent(2, 120.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),

                      StaggeredTile.extent(2, 120.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),

                      StaggeredTile.extent(2, 120.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),

                      StaggeredTile.extent(2, 120.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),

                    ],
                  ),
                  /*child: ListView.builder(
                      itemCount: deficiencies.length,
                      itemBuilder: (context, position){
                        return Container(
                          child: _myListContainer(
                              deficiencies[position].deficiencyName, deficiencies[position].deficiencyDescription,
                              deficiencies[position].deficiencyTime,deficiencies[position].status),
                        );
                      }),*/
                ),

              ),
            ),

          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Color(0xff2da9ef),
        foregroundColor: Color(0xffffffff),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()));
        },
        tooltip: 'Increment',
        child: new Text('OK', style: TextStyle(fontSize: 10.0, color: Colors.white)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Color(0xff2da9ef),
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .width/9,
            ),
          ],
        ),


      ),
    );
  }
  Widget _myHeaderContent(){
    return Align(
      child: ListTile(
        leading: IconButton(icon: Icon(FontAwesomeIcons.utensils), color: Colors.white, iconSize:50.0, onPressed: (){},),
        title: Text('Nos conseils', style: TextStyle(fontSize: 30.0, color: Colors.white)),
        subtitle: Text("Voici la liste des aliments que l'on vous propose de manger", style: TextStyle(fontSize: 14.0, color: Colors.white)),
      ),
    );
  }
  Widget _myListContainer(String deficiencyName, String deficiencyDescription, String deficiencyTime, Color deficiencyColor){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //height: 180.0,
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          shadowColor: Color(0x802196F3),
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  height: 80.0,
                  width: 10.0,
                  color: deficiencyColor,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: Text(deficiencyName, style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            )),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width/1.5,
                            child: Text(deficiencyDescription, textAlign: TextAlign.justify, style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(deficiencyTime, style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

