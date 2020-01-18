import 'status.dart';

class Goal {
  String goalSentence, image;
  bool status;
  int weeks;
  int howMuch;
  String type;
  List<Status> statusL;

  Goal(String type, int howMuch, int week, String image){
    this.goalSentence = "Manger " + howMuch.toString() + " fois " + type + " pendant " + week.toString() + " semaine(s)";
    this.status = false;
    this.weeks = week;
    this.howMuch = howMuch;
    this.type = type;
    this.image = image;
    this.statusL = new List();
    setListStatus();
  }

  changeStatus(bool statuts){
    this.status = statuts;
  }

  setListStatus(){
    for(int i=0; i < howMuch*weeks; i ++){
      statusL.add(new Status(0));
    }
  }
}