
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
    goals.add(new Goal("des légumes", 3, 2, "green-vegetables.png"));
    goals.add(new Goal("du fromage", 1, 2, "cheese.png"));
    goals.add(new Goal("du boudin noir", 1, 3, "black-pudding.png"));
    goals.add(new Goal("des oeufs", 1, 2, "egg.png"));
    goals.add(new Goal("de la bettrave", 2, 2, "beet.png"));
    goals.add(new Goal("des fruits de mer", 3, 2, "seafood.png"));
    goals.add(new Goal("des lentilles", 1, 3, "legumes.png"));
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