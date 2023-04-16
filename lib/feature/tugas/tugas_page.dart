import 'package:company_hub/feature/tugas/tugas_controller.dart';
import 'package:company_hub/resources/resources.dart';
import 'package:company_hub/utills/widget/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class TugasPage extends StatelessWidget {
  const TugasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TugasController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBarWidget.primaryAppbar(
            context: context, 
            titleString: 'Tugas'
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: TableCalendar(
                    daysOfWeekVisible: true,
                    calendarFormat: CalendarFormat.week,
                    onDaySelected: (DateTime selectDay, DateTime focusDay) {
                      // setState(() {
                        controller.selectedDay = selectDay;
                        controller.focusedDay = focusDay;
                      // });
                    },
                    selectedDayPredicate: (DateTime date) {
                      return isSameDay(controller.selectedDay, date);
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
                        borderRadius: BorderRadius.circular(8)
                      ),
                      todayDecoration: BoxDecoration(
                        color: AppColors.textColour30,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      weekendDecoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      selectedTextStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.employeeData.length,
                  itemBuilder: (BuildContext context, int index) {
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
                                    image: DecorationImage(
                                      image: controller.employeeData[index].profilePict,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(100))),
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.employeeData[index].name, 
                                    style: Theme.of(context).textTheme.titleLarge!
                                  ),
                                  Text(
                                    controller.employeeData[index].location,
                                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                          color: AppColors.colorSecondary,
                                        ),
                                  ),
                                  Text(
                                    controller.employeeData[index].time,
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
                  },
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
