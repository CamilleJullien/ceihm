import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'task.dart';
import 'main.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FoodList extends StatefulWidget{
  @override
  _FoodList createState() => _FoodList();
}

class _FoodList extends State<FoodList>{

  final List<Deficiency> deficiencies = new List();
  @override
  void initState(){
    super.initState();

    setState((){
      deficiencies.add(new Deficiency("Carence en fer", "Cela entraine une diminution de la capacité de travail et la dégradation de la fonction immunitaire et endocrinienne.", "Fe", Colors.red));
      deficiencies.add(new Deficiency("Carence en calcium", "Cette carence entraine des crampes, des fractures et en général une carence en vitamine D.", "Ca", Colors.purple));
      deficiencies.add(new Deficiency("Carence en vitamine D", "Cette carence entraine de la fatigue, une faiblesse musculaire, parfois une peau sèche et des crampes.", "D", Colors.amber));
      deficiencies.add(new Deficiency("Carence en iode", "Cette carence entraine de la fatigue, une prise de poids inexpliquée, une peau sèche et la perte de cheveux", "I", Colors.green));
      deficiencies.add(new Deficiency("Vitamine B12", "Cette carence entraine un essoufflement, des vertiges, des palpitations, des picotements ou des engourdissements des pieds et des mains.", "B12", Colors.blue));


    });
  }

  Material myItems(String heading, int color){
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
                    child: Text(heading, style: TextStyle(color: new Color(color), fontSize: 20.0,),
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
  Material myTitle(String heading, int color){
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
                    child: Text(heading, style: TextStyle(color: new Color(color), fontSize: 20.0,fontWeight: FontWeight.bold),
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
                      myTitle("Carence en fer", 0xffdb1330),
                      myItems("Viandes rouges", 0xffdb1330),
                      myItems("Betterave", 0xffdb1330),
                      myItems("Lentilles", 0xffdb1330),
                      myItems("Boudin noir", 0xffdb1330),

                      myTitle("Carence en calcium", 0xff8d13d6),
                      myItems("Produits laitiers", 0xff8d13d6),
                      myItems("Légumes verts", 0xff8d13d6),
                      myItems("Poissons", 0xff8d13d6),
                      myItems("Lait de soja", 0xff8d13d6),

                      myTitle("Carence en vitamine D", 0xffeeae38),
                      myItems("Oeufs", 0xffeeae38),
                      myItems("Poissons gras", 0xffeeae38),
                      myItems("Champignon", 0xffeeae38),
                      myItems("Lait de soja", 0xffeeae38),

                      myTitle("Carence en iode", 0xff0faf3e),
                      myItems("Fruits de mer", 0xff0faf3e),
                      myItems("Poissons", 0xff0faf3e),
                      myItems("Produits laitiers", 0xff0faf3e),
                      myItems("Algues", 0xff0faf3e),

                      myTitle("Carence en vitamine B12", 0xff2996ec),
                      myItems("Crustacés", 0xff2996ec),
                      myItems("Fromages", 0xff2996ec),
                      myItems("Poissons", 0xff2996ec),
                      myItems("Viandes", 0xff2996ec),
                    ],
                    staggeredTiles: [
                      StaggeredTile.extent(2, 70.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),

                      StaggeredTile.extent(2, 70.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),

                      StaggeredTile.extent(2, 70.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),

                      StaggeredTile.extent(2, 70.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),
                      StaggeredTile.extent(1, 60.0),

                      StaggeredTile.extent(2, 70.0),
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
            MaterialPageRoute(builder: (context) => MyHomePage(title: 'Flutter Demo Home Page')),
          );
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
        leading: IconButton(icon: Icon(FontAwesomeIcons.utensils), color: Colors.amber, iconSize:50.0, onPressed: (){},),
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

