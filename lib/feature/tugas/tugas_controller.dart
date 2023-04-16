import 'package:company_hub/resources/resources.dart';
import 'package:get/get.dart';

class TugasController extends GetxController {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  final List<Employee> employeeData = [
    Employee(
      name: "Grandi Ekabuana",
      profilePict: AppImages.imgDummyProfile.image().image,
      location: "WFH",
      time: "8:28 AM - 6:30 PM"
    ),
    Employee(
      name: "Grandi Ekabuana",
      profilePict: AppImages.imgDummyProfile.image().image,
      location: "-",
      time: "-"
    )
  ];
}
class Employee {
  final profilePict;
  final String name, location, time;

  Employee({
    required this.profilePict,
    required this.name,
    required this.location,
    required this.time
  });
}
