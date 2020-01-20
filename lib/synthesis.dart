import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'task.dart';
import 'main.dart';
import 'foodList.dart';

class Synthesis extends StatefulWidget {
  @override
  _SynthesisState createState() => _SynthesisState();
}

class _SynthesisState extends State<Synthesis> {
  final List<Deficiency> deficiencies = new List();

  @override
  void initState() {
    super.initState();

    setState(() {
      deficiencies.add(new Deficiency(
          "Carence en fer",
          "Cela entraine une diminution de la capacité de travail et la dégradation de la fonction immunitaire et endocrinienne.",
          "Fe",
          Colors.red));
      deficiencies.add(new Deficiency(
          "Carence en calcium",
          "Cette carence entraine des crampes, des fractures et en général une carence en vitamine D.",
          "Ca",
          Colors.purple));
      deficiencies.add(new Deficiency(
          "Carence en vitamine D",
          "Cette carence entraine de la fatigue, une faiblesse musculaire, parfois une peau sèche et des crampes.",
          "D",
          Colors.amber));
      deficiencies.add(new Deficiency(
          "Carence en iode",
          "Cette carence entraine de la fatigue, une prise de poids inexpliquée, une peau sèche et la perte de cheveux",
          "I",
          Colors.green));
      deficiencies.add(new Deficiency(
          "Vitamine B12",
          "Cette carence entraine un essoufflement, des vertiges, des palpitations, des picotements ou des engourdissements des pieds et des mains.",
          "B12",
          Colors.blue));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Color(0xff5a348b),
                  gradient: LinearGradient(
                      colors: [Color(0xff8d70fe), Color(0xff2da9ef)],
                      begin: Alignment.centerRight,
                      end: Alignment(-1.0, -1.0)),
                ),
                child: _myHeaderContent(),
              ),
            ),

            Positioned(
              top: 170.0,
              //left: 18.0,
              child: Container(
                color: Colors.white,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height/1.3,
                child: ListView.builder(
                    itemCount: deficiencies.length,
                    itemBuilder: (context, position) {
                      return Container(
                        child: _myListContainer(
                            deficiencies[position].deficiencyName,
                            deficiencies[position].deficiencyDescription,
                            deficiencies[position].deficiencyTime,
                            deficiencies[position].status),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Color(0xff2da9ef),
        foregroundColor: Color(0xffffffff),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FoodList()),
          );
        },
        tooltip: 'Increment',

        child: new Text('Suivant', style: TextStyle(fontSize: 10.0, color: Colors.white)),
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
                  .width/25,
            ),
            /* IconButton(
              icon: Icon(FontAwesomeIcons.stickyNote),
              color: Color(0xff2da9ef),
              onPressed: (){
              //
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.search),
              color: Color(0xff2da9ef),
              onPressed: (){
              //
              },
            ),*/
          ],
        ),
      ),
    );
  }

  Widget _myHeaderContent() {
    return Align(
      child: ListTile(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.clipboardCheck),
          color: Colors.white,
          iconSize: 50.0,
          onPressed: () {},
        ),
        //leading: Text('1', style: TextStyle(fontSize: 50.0, color: Colors.amber)),
        title: Text('Synthèse',
            style: TextStyle(fontSize: 30.0, color: Colors.white)),
        subtitle: Text('Voici la liste des carences que vous pourrez avoir.',
            style: TextStyle(fontSize: 14.0, color: Colors.white)),
      ),
    );
  }

  Widget _myListContainer(String deficiencyName, String deficiencyDescription,
      String deficiencyTime, Color deficiencyColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //height: 180.0,
        child: Material(
          color: Colors.white,
          elevation: 5.0,
          shadowColor: Color(0x802196F3),
          child: Container(
            child: Row(
              children: <Widget>[
               /* Container(
                  height: 80.0,
                  width: 10.0,
                  color: deficiencyColor,
                ),*/
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: Text(deficiencyName,
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width/1.5,
                            child: Text(deficiencyDescription, style: TextStyle(
                              //child: Text(deficiencyDescription, textAlign: TextAlign.justify, style: TextStyle(
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
                          //backgroundColor: Color(0xff8d70fe)
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
/*Widget _myHiddenContainer(Color deficiencyColor){
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height,
      color: deficiencyColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
                icon: Icon(FontAwesomeIcons.solidTrashAlt),
                color: Colors.white,
                onPressed: (){
                  setState(() {
                    //
                  });
                }),
          ),
        ],
      ),
    );
  }*/
}
