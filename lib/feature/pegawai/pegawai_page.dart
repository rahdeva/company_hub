import 'package:company_hub/feature/pegawai/pegawai_controller.dart';
import 'package:company_hub/routes/page_names.dart';
import 'package:company_hub/utills/widget/app_bar/app_bar_widget.dart';
import 'package:company_hub/utills/widget/floating_action_button/tambah_fab_widget.dart';
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
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PegawaiController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBarWidget.primaryAppbar(
            context: context, 
            titleString: 'Pegawai',
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.employeeData.length,
                itemBuilder: (BuildContext context, int index) {
                  final pegawai = controller.employeeData[index];
                  return Container(
                    color: AppColors.white,
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: pegawai.profilePict
                                )
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  pegawai.name,
                                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: AppColors.textColour80
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  pegawai.department,
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppColors.colorSecondary
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  pegawai.division,
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppColors.colorTertiary
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                controller.call(phoneNumber: pegawai.phoneNumber);
                              },
                              child: const Icon(
                                Icons.call,
                                size: 20,
                                color: AppColors.colorSecondary,
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            InkWell(
                              onTap: (){
                                controller.email(email: pegawai.email);
                              },
                              child: const Icon(
                                Icons.mail_rounded,
                                size: 20,
                                color: AppColors.colorSecondary,
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            InkWell(
                              onTap: (){
                                controller.whatsapp(whatsappNumber: pegawai.whatsappNumber);
                              },
                              child: AppImages.whatsapp.image(
                                width: 20,
                                color: AppColors.colorSecondary,
                              )
                            ),
                          ],
                        )
                      ]),
                  );
                })
            ),
          ),
          floatingActionButton: controller.userType == "Admin"
          ? TambahFloatingActionButton(
              onTap: (){
                Get.toNamed(PageName.TAMBAH_PEGAWAI);
              }
            )
          : const SizedBox()
        );
      }
    );
  }
}