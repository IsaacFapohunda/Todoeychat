class Task{

  String? name;
  bool isdone;
  Task({this.name, this.isdone = false});

  void Taskdone(){
    isdone = !isdone;
  }
}