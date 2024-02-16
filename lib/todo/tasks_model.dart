class TasksModel{
  int taskId;
  String taskDesc;

  TasksModel({required this.taskId, required this.taskDesc});

  @override
  String toString() {
    return 'TasksModel{taskId: $taskId, taskDesc: $taskDesc}';
  }
}