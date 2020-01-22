import 'package:flutter/material.dart';
import 'task.dart';

class SynthesisHome extends StatefulWidget {
  @override
  _SynthesisState createState() => _SynthesisState();
}

class _SynthesisState extends State<SynthesisHome> {
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
      appBar: AppBar(
        centerTitle: true,
        title: Text('Liste des carences'),
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
            Positioned(
              child: Container(
                color: Colors.white,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
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
    );
  }

  Widget _myListContainer(String deficiencyName, String deficiencyDescription,
      String deficiencyTime, Color deficiencyColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Material(
          color: Colors.white,
          elevation: 5.0,
          shadowColor: Color(0x802196F3),
          child: Container(
            child: Row(
              children: <Widget>[
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
                                .width / 1.5,
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
                      height: 50,
                      width: 50,
                      color: Colors.transparent,
                      child: new Container(
                        decoration: new BoxDecoration(
                            color: Color(0xff8d70fe),
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(40.0),
                                topRight: const Radius.circular(40.0))),
                        child: new Center(
                          child: Text(
                              deficiencyTime, textAlign: TextAlign.center,
                              style: TextStyle(
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
}
