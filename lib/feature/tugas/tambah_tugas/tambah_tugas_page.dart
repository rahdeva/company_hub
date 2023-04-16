
import 'package:company_hub/feature/tugas/tambah_tugas/tambah_tugas_controller.dart';
import 'package:company_hub/utills/helper/validator.dart';
import 'package:company_hub/utills/widget/app_bar/app_bar_widget.dart';
import 'package:company_hub/utills/widget/floating_action_button/floating_submit_button.dart';
import 'package:company_hub/utills/widget/forms/date_picker_widget.dart';
import 'package:company_hub/utills/widget/forms/dropdown_widget_2.dart';
import 'package:company_hub/utills/widget/forms/label_form_widget.dart';
import 'package:company_hub/utills/widget/forms/text_field_widget.dart';
import 'package:company_hub/utills/widget/pop_up/pop_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class TambahTugasPage extends StatelessWidget {
  const TambahTugasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TambahTugasController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBarWidget.secondaryAppbar(
            context: context,
            titleString: 'Tambah Tugas',
          ),
          body: FormBuilder(
            key: controller.formKey,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    const LabelFormWidget(
                      labelText: "Project",
                    ),
                    DropdownWidget2(
                      hintText: 'Project',
                      selectedItem: controller.dropdownResult,
                      validator: Validator.required(),
                      dropdownItems: controller.listProject,
                      onChanged: (String? newValue){
                        controller.dropdownResult = newValue;
                      },
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Kegiatan",
                    ),
                    TextFieldWidget(
                      name: 'kegiatan',
                      hintText: 'Kegiatan',
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Tanggal Tugas",
                    ),
                    DatePickerWidget(
                      name: 'tanggal-tugas',
                      hintText: 'Tanggal Tugas',
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Waktu Tugas",
                    ),
                    DatePickerWidget(
                      name: 'waktu-tugas',
                      hintText: 'Waktu Tugas',
                      validator: Validator.required(),
                      inputType: InputType.time,
                    ),
                    const SizedBox(height: 16),
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
                  middleText: "Tugas berhasil ditambahkan", 
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
