class Task{
  final String title;
  bool iscompleted;
  
  Task({
    required this.title,
    required this.iscompleted,

  });

  void isDone(){
  iscompleted = !iscompleted;
  }
}