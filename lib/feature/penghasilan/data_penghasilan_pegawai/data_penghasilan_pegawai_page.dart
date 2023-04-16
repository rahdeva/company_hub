
import 'package:company_hub/feature/penghasilan/data_penghasilan_pegawai/data_penghasilan_pegawai_controller.dart';
import 'package:company_hub/routes/page_names.dart';
import 'package:company_hub/utills/widget/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/resources.dart';

class DataPenghasilanPegawaiPage extends StatelessWidget {
  const DataPenghasilanPegawaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DataPenghasilanPegawaiController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBarWidget.secondaryAppbar(
            context: context,
            titleString: 'Data Penghasilan Pegawai',
          ),
          body: Column(
            children: [
              const SizedBox(height: 24),
              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.employeeData.length,
                itemBuilder: (BuildContext context, int index) {
                  final employeeData = controller.employeeData[index];
                  return InkWell(
                    onTap: (){
                      Get.toNamed(PageName.PENGHASILAN_PEGAWAI, arguments: employeeData);
                    },
                    child: Container(
                      color: AppColors.white,
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                    image: employeeData.profilePict
                                  )
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                employeeData.name,
                                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                  color: AppColors.textColour80,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: AppColors.colorSecondary,
                          ),
                        ]
                      ),
                    ),
                  );
                }),
            ],
          )
        );
      }
    );
  }
}
