import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FoodListHome extends StatefulWidget{
  @override
  _FoodList createState() => _FoodList();
}

class _FoodList extends State<FoodListHome>{

  Widget item(String food, String image){
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        child: Material(
          color: Colors.white,
          elevation: 5.0,
          shadowColor: Color(0x802196F3),
          borderRadius: BorderRadius.circular(24.0),
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                            child: Container(
                              color: Colors.transparent,
                              child: new Container(
                                child: new Center(
                                  child: new Image.asset(image, width: 30, height: 30),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                    child : Container(
                      width:MediaQuery.of(context).size.width/1.5,
                      child: Text(food, style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black
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
  Widget title(String deficiencyName, String deficiencyTime){
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        child: Material(
          color: Colors.white,
          elevation: 5.0,
          shadowColor: Color(0x802196F3),
          borderRadius: BorderRadius.circular(24.0),
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
      appBar: AppBar(
        centerTitle: true,
        title: Text('Liste des aliments'),
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
            Container(
              child : Positioned(
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: StaggeredGridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    children: <Widget>[
                      title("Carence en fer", "Fe"),
                      item("Viandes rouges", "assets/meat.png"),
                      item("Betterave", "assets/beet.png"),
                      item("Lentilles", "assets/legumes.png"),
                      item("Boudin noir", "assets/black-pudding.png"),

                      title("Carence en calcium", "Ca"),
                      item("Produits laitiers", "assets/yogurt.png"),
                      item("Légumes verts", "assets/green-vegetables.png"),
                      item("Poissons", "assets/fish.png"),
                      item("Lait de soja", "assets/milk.png"),

                      title("Carence en vitamine D", "D"),
                      item("Oeufs", "assets/egg.png"),
                      item("Poissons gras", "assets/fish.png"),
                      item("Champignon", "assets/mushroom.png"),
                      item("Lait de soja", "assets/milk.png"),

                      title("Carence en iode", "I"),
                      item("Fruits de mer", "assets/seafood.png"),
                      item("Poissons", "assets/fish.png"),
                      item("Produits laitiers", "assets/yogurt.png"),
                      item("Algues", "assets/milk.png"),

                      title("Carence en vitamine B12", "B12"),
                      item("Crustacés", "assets/seafood.png"),
                      item("Fromages", "assets/cheese.png"),
                      item("Poissons", "assets/fish.png"),
                      item("Viandes", "assets/meat.png"),
                    ],
                    staggeredTiles: [
                      StaggeredTile.extent(2, 100.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),

                      StaggeredTile.extent(2, 100.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),

                      StaggeredTile.extent(2, 100.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),

                      StaggeredTile.extent(2, 100.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),

                      StaggeredTile.extent(2, 100.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),
                      StaggeredTile.extent(2, 50.0),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
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

