
import 'package:company_hub/feature/penghasilan/edit_penghasilan_2/edit_penghasilan_2_controller.dart';
import 'package:company_hub/resources/resources.dart';
import 'package:company_hub/utills/helper/validator.dart';
import 'package:company_hub/utills/widget/app_bar/app_bar_widget.dart';
import 'package:company_hub/utills/widget/floating_action_button/floating_submit_button.dart';
import 'package:company_hub/utills/widget/forms/label_form_widget.dart';
import 'package:company_hub/utills/widget/forms/text_field_widget.dart';
import 'package:company_hub/utills/widget/pop_up/pop_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class EditPenghasilan2Page extends StatelessWidget {
  const EditPenghasilan2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditPenghasilan2Controller>(
      builder: (controller) {
        final potongan = controller.potongan;
        return Scaffold(
          appBar: AppBarWidget.secondaryAppbar(
            context: context,
            titleString: 'Edit Data Penghasilan',
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
                      "POTONGAN",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorPrimary
                      ),
                    ),
                    const SizedBox(height: 24),
                    const LabelFormWidget(
                      labelText: "BPJS Kesehatan",
                    ),
                    TextFieldWidget(
                      name: 'bpjs-kesehatan',
                      hintText: 'BPJS Kesehatan',
                      initialValue: potongan.bpjsKesehatan,
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "BPJS Naker",
                    ),
                    TextFieldWidget(
                      name: 'bpjs-naker',
                      hintText: 'BPJS Naker',
                      initialValue: potongan.bpjsNaker,
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "PPh 21",
                    ),
                    TextFieldWidget(
                      name: 'pph-21',
                      hintText: 'PPh 21',
                      initialValue: potongan.pph21,
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Cicilan Pinjaman",
                    ),
                    TextFieldWidget(
                      name: 'cicilan-pinjaman',
                      hintText: 'Cicilan Pinjaman',
                      initialValue: potongan.cicilanPinjaman,
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Total (B)",
                    ),
                    TextFieldWidget(
                      name: 'total-b',
                      hintText: 'Total (B)',
                      initialValue: controller.getTotalB(),
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
            onPressed: (){
              if(
                controller.formKey.currentState != null &&
                controller.formKey.currentState!.saveAndValidate()
              ){
                PopUpWidget.successAndFailPopUp(
                  context: context, 
                  titleString: "Success!", 
                  middleText: "Data Penghasilan Pegawai berhasil diperbaharui", 
                  buttonText: "OK"
                );
              }
            },
          ),
        );
      }
    );
  }
}
