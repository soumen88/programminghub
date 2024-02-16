class TasksModel{

  int id;
  String taskName;

  TasksModel({required this.id, required this.taskName});

  Map<String, dynamic> mapTasks() {
    return {
      'Id': id,
      'TaskName': taskName,
    };
  }

  @override
  String toString() {
    return 'TasksModel{id: $id, taskName: $taskName}';
  }
}
