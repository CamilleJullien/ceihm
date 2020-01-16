class Goal {
  String goalSentence, image;
  bool status;
  int weeks;
  int howMuch;
  String type;

  Goal(String type, int howMuch, int week, String image){
    this.goalSentence = "Manger " + howMuch.toString() + " fois " + type + " pendant " + week.toString() + " semaine(s)";

    this.status = false;
    this.weeks = week;
    this.howMuch = howMuch;
    this.type = type;
    this.image = image;
  }

  changeStatus(bool statuts){
    this.status = statuts;
  }
}