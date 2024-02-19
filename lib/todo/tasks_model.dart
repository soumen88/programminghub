class TasksModel{
  int taskId;
  String taskDesc;

  TasksModel({required this.taskId, required this.taskDesc});

  Map<String, dynamic> taskMapper(){
    return {
      "Id" : this.taskId,
      "TaskDesc" : this.taskDesc,
    };
  }

  @override
  String toString() {
    return 'TasksModel{taskId: $taskId, taskDesc: $taskDesc}';
  }
}