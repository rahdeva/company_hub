import 'package:company_hub/utills/widget/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/resources/resources.dart';
import 'package:table_calendar/table_calendar.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primaryAppbar(
          context: context, titleString: 'txt_menu_my_employee'.tr),
      body: SingleChildScrollView(
        child: Column(
          children: [
            calendarWidget(context),
            const employeeListWidget(),
          ],
        ),
      ),
    );
  }

  Container calendarWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: TableCalendar(
        daysOfWeekVisible: true,
        calendarFormat: CalendarFormat.week,
        onDaySelected: (DateTime selectDay, DateTime focusDay) {
          setState(() {
            selectedDay = selectDay;
            focusedDay = focusDay;
          });
        },
        selectedDayPredicate: (DateTime date) {
          return isSameDay(selectedDay, date);
        },
        firstDay: DateTime(1990),
        lastDay: DateTime(2050),
        focusedDay: DateTime.now(),
        startingDayOfWeek: StartingDayOfWeek.sunday,
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.textColour90,
              ),
        ),
        calendarStyle: CalendarStyle(
          todayTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
              ),
          defaultTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.black,
              ),
          weekendTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.black,
              ),
          isTodayHighlighted: true,
          defaultDecoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          selectedDecoration: BoxDecoration(
              color: AppColors.colorPrimary,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8)),
          todayDecoration: BoxDecoration(
              color: AppColors.textColour30,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8)),
          weekendDecoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8)),
          selectedTextStyle: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class employeeListWidget extends StatelessWidget {
  const employeeListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: employeeData.length,
      itemBuilder: (BuildContext context, int index) {
        return EmployeeTiles(
            profilePict: employeeData[index].profilePict,
            name: employeeData[index].name,
            absent: employeeData[index].absent,
            location: employeeData[index].location,
            time: employeeData[index].time);
      },
    );
  }
}

class Employee {
  final profilePict;
  final String name, location, time;
  final bool absent;

  Employee(
      {required this.profilePict,
      required this.name,
      required this.absent,
      required this.location,
      required this.time});
}

final List<Employee> employeeData = [
  Employee(
      name: "Grandi Ekabuana",
      profilePict: AppImages.imgDummyProfile.image().image,
      absent: false,
      location: "WFH",
      time: "8:28 AM - 6:30 PM"),
  Employee(
      name: "Grandi Ekabuana",
      profilePict: AppImages.imgDummyProfile.image().image,
      absent: true,
      location: "-",
      time: "-")
];

class EmployeeTiles extends StatelessWidget {
  const EmployeeTiles({
    super.key,
    required this.profilePict,
    required this.name,
    required this.absent,
    required this.location,
    required this.time,
  });

  final profilePict;
  final String name, location, time;
  final bool absent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(image: profilePict),
                    borderRadius: const BorderRadius.all(Radius.circular(100))),
              ),
              const SizedBox(
                width: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.titleLarge!),
                  Text(
                    absent ? "Tidak Masuk" : "Masuk",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: absent ? AppColors.danger : AppColors.success,
                        ),
                  ),
                  Text(
                    location,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.colorSecondary,
                        ),
                  ),
                  Text(
                    time,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.colorSecondary,
                        ),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.call,
                color: AppColors.colorSecondary,
              ),
              SizedBox(
                width: 16,
              ),
              Icon(
                Icons.mail_rounded,
                color: AppColors.colorSecondary,
              ),
            ],
          )
        ],
      ),
    );
  }
}
