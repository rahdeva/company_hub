import 'package:get/get.dart';

class TugasController extends GetxController {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  final List<Task> taskListChecklist = [
    Task(
      projectName: 'Project 1', 
      task: 'Membuat halaman profile',
      taskDate: '3 May 2023', 
      taskTime: '16:45'
    ),
    Task(
      projectName: 'Project 1', 
      task: 'Membuat halaman dashboard',
      taskDate: '3 May 2023', 
      taskTime: '16:45'
    ),
  ];

  final List<Task> taskListDone = [
    Task(
      projectName: 'Project 1', 
      task: 'Membuat halaman login',
      taskDate: '3 May 2023', 
      taskTime: '16:45'
    ),
  ];

  void doneTask(Task task){
    
  }

  void unDoneTask(Task task){
    
  }
  
  void deleteTaskChecklist(Task task){

  }

  void deleteTaskDone(Task task){

  }
}
class Task {
  final String projectName;
  final String task;
  final String taskDate;
  final String taskTime;

  Task({
    required this.projectName,
    required this.task,
    required this.taskDate,
    required this.taskTime
  });
}
