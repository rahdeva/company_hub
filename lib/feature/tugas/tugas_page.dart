import 'package:company_hub/feature/tugas/tugas_controller.dart';
import 'package:company_hub/resources/resources.dart';
import 'package:company_hub/routes/page_names.dart';
import 'package:company_hub/utills/widget/app_bar/app_bar_widget.dart';
import 'package:company_hub/utills/widget/floating_action_button/tambah_fab_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class TugasPage extends StatefulWidget {
  const TugasPage({super.key});

  @override
  State<TugasPage> createState() => _TugasPageState();
}

class _TugasPageState extends State<TugasPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TugasController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBarWidget.primaryAppbar(
            context: context, 
            titleString: 'Tugas',
            withAdd: true,
            addOnPressed: (){
              Get.toNamed(PageName.DATA_TUGAS_PEGAWAI);
            }
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: TableCalendar(
                    daysOfWeekVisible: true,
                    calendarFormat: CalendarFormat.week,
                    onDaySelected: (DateTime selectDay, DateTime focusDay) {
                      setState(() {
                        controller.selectedDay = selectDay;
                        controller.focusedDay = focusDay;
                      });
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
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Divider(
                    color: AppColors.colorSecondary,
                    thickness: 1,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.warning,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [ AppElevation.elevation4px ]
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Text(
                    "Daftar Tugas",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.surface
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.taskListChecklist.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final taskListChecklist = controller.taskListChecklist[index];
                    return Container(
                      width: 100.w,
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [ AppElevation.elevation4px ]
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){
                                controller.doneTask(taskListChecklist);
                              },
                              child: const Icon(
                                Icons.circle_outlined,
                                size: 24,
                                color: AppColors.textColour80,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 8,
                              children: [
                                SizedBox(
                                  width: 100.w - 132,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          taskListChecklist.projectName,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.textColour90
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 100.w - 132,
                                  child: Text(
                                    taskListChecklist.task,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.colorSecondary
                                    ),
                                  ),
                                ),
                                Text(
                                  "${taskListChecklist.taskDate} - ${taskListChecklist.taskTime}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textColour60
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                controller.deleteTaskChecklist(taskListChecklist);
                              },
                              child: const Icon(
                                Icons.delete,
                                size: 24,
                                color: AppColors.danger,
                              ),
                            ),
                          ],
                        ),
                      )
                    );
                  },
                ),
                const SizedBox(height: 16),
                Container(
                  margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.success,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [ AppElevation.elevation4px ]
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Text(
                    "Done",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.surface
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.taskListDone.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final taskListDone = controller.taskListDone[index];
                    return Container(
                      width: 100.w,
                      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [ AppElevation.elevation4px ]
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){
                                controller.unDoneTask(taskListDone);
                              },
                              child: const Icon(
                                Icons.circle_outlined,
                                size: 24,
                                color: AppColors.textColour80,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 8,
                              children: [
                                SizedBox(
                                  width: 100.w - 132,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          taskListDone.projectName,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.textColour90
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 100.w - 132,
                                  child: Text(
                                    taskListDone.task,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.colorSecondary
                                    ),
                                  ),
                                ),
                                Text(
                                  "${taskListDone.taskDate} - ${taskListDone.taskTime}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textColour60
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                controller.deleteTaskDone(taskListDone);
                              },
                              child: const Icon(
                                Icons.delete,
                                size: 24,
                                color: AppColors.danger,
                              ),
                            ),
                          ],
                        ),
                      )
                    );
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          floatingActionButton: TambahFloatingActionButton(
            onTap: (){
              Get.toNamed(PageName.TAMBAH_TUGAS);
            }
          ),
        );
      }
    );
  }
}
