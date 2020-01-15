
import 'goalObject.dart';

class GoalsList {
  static final GoalsList _instance = GoalsList._internal();


  List<Goal> goals = new List();

  factory GoalsList() {
    return _instance;
  }

  GoalsList._internal() {
    goals.add(new Goal("des carottes", 2, 3, "carrot.png"));
    goals.add(new Goal("du poisson", 1, 2, "fish.png"));
  }

  getList(){
    return goals;
  }

  getSelectedGoals(){
    List<Goal> goalsSelected = new List();
    for(int i= 0; i< goals.length; i++){
      if(goals[i].status)
        goalsSelected.add(goals[i]);
    }
    return goalsSelected;
  }
}