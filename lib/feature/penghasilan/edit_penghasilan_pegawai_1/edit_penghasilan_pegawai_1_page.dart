
import 'package:company_hub/feature/penghasilan/edit_penghasilan_pegawai_1/edit_penghasilan_pegawai_1_controller.dart';
import 'package:company_hub/routes/page_names.dart';
import 'package:company_hub/utills/helper/validator.dart';
import 'package:company_hub/utills/widget/app_bar/app_bar_widget.dart';
import 'package:company_hub/utills/widget/floating_action_button/floating_submit_button.dart';
import 'package:company_hub/utills/widget/forms/label_form_widget.dart';
import 'package:company_hub/utills/widget/forms/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../../resources/resources.dart';

class EditPenghasilanPegawai1Page extends StatelessWidget {
  const EditPenghasilanPegawai1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditPenghasilanPegawai1Controller>(
      builder: (controller) {
        final penghasilan = controller.penghasilan;
        return Scaffold(
          appBar: AppBarWidget.secondaryAppbar(
            context: context,
            titleString: 'Edit Data Penghasilan Pegawai',
          ),
          body: FormBuilder(
            key: controller.formKey,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 24), 
                    Text(
                      "PENGHASILAN",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorPrimary
                      ),
                    ),
                    const SizedBox(height: 24),
                    const LabelFormWidget(
                      labelText: "Gaji Pokok",
                    ),
                    TextFieldWidget(
                      name: 'gaji-pokok',
                      hintText: 'Gaji Pokok',
                      initialValue: penghasilan.gajiPokok,
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Tunjangan Jabatan",
                    ),
                    TextFieldWidget(
                      name: 'tunjangan-jabatan',
                      hintText: 'Tunjangan Jabatan',
                      initialValue: penghasilan.tunjanganJabatan,
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Tunjangan BPJS Kesehatan",
                    ),
                    TextFieldWidget(
                      name: 'tunjangan-bpjs-kesehatan',
                      hintText: 'Tunjangan BPJS Kesehatan',
                      initialValue: penghasilan.tunjanganBPJSKesehatan,
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Tunjangan BPJS Naker",
                    ),
                    TextFieldWidget(
                      name: 'tunjangan-bpjs-naker',
                      hintText: 'Tunjangan BPJS Naker',
                      initialValue: penghasilan.tunjanganBPJSNaker,
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Lembur",
                    ),
                    TextFieldWidget(
                      name: 'lembur',
                      hintText: 'Lembur',
                      initialValue: penghasilan.lembur,
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Bonus",
                    ),
                    TextFieldWidget(
                      name: 'bonus',
                      hintText: 'Bonus',
                      initialValue: penghasilan.bonus,
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Total (A)",
                    ),
                    TextFieldWidget(
                      name: 'total-a',
                      hintText: 'Total (A)',
                      initialValue: controller.getTotalA(),
                      enabled: false,
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Total akan terisi otomatis oleh sistem",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.colorTertiary,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingSubmitButton(
            textButton: "Next",
            onPressed: (){
              if(
                controller.formKey.currentState != null &&
                controller.formKey.currentState!.saveAndValidate()
              ){
                Get.toNamed(PageName.EDIT_PENGHASILAN_PEGAWAI_2);
              }
            },
          ),
        );
      }
    );
  }
}
