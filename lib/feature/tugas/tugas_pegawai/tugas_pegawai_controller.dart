import 'package:company_hub/feature/tugas/data_tugas_pegawai/data_tugas_pegawai_controller.dart';
import 'package:get/get.dart';

class TugasPegawaiController extends GetxController {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  late final Employee employeeData;

  @override
  void onInit() {
    employeeData = Get.arguments;
    super.onInit();
  }

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