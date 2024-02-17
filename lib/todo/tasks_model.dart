class TasksModel{
  int taskId;
  String taskDesc;

  TasksModel({required this.taskId, required this.taskDesc});

  Map<String, dynamic> mapTasks(){
    return {
      "Id" : taskId,
      "TaskDesc" : taskDesc,
    };
  }

  @override
  String toString() {
    return 'TasksModel{taskId: $taskId, taskDesc: $taskDesc}';
  }
}