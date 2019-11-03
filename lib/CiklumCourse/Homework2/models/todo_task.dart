class TodoTask {

  //todo decide what Class Properties are needed
  //todo implement autoincrement
  int _id;
  final String description;
  bool isCompleted;

  TodoTask (this.description, {this.isCompleted = false});

  /*void set description(String description) {
    if(description.length <= 20) {
      this._description = description;
    } else {
      this._description = '${description.substring(0, 20)}...';
    }
  }*/

}