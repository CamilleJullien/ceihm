class Status {

  int status;

  Status(int status){
    if(status <0 || status > 2)
      print("Mauvais object, la valeur du status doit être compris entre 1 et"
          " 3");
    else
      this.status = status;
  }

  getStatusValue(){
    switch (this.status){
      case 0:
        return "unknown";
      case 1:
        return "validated";
      case 2:
        return "not_validated";
    }
  }
}