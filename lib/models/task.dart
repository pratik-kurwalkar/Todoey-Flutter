class Task {
  Task({this.name, this.isComplete = false});
  final String name;
  bool isComplete;
  void toggleTask() {
    isComplete = !isComplete;
  }
}
