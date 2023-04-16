
import 'package:company_hub/feature/pegawai/tambah_pegawai/tambah_pegawai_controller.dart';
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

import '../../../resources/resources.dart';

class TambahPegawaiPage extends StatelessWidget {
  const TambahPegawaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TambahPegawaiController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBarWidget.secondaryAppbar(
            context: context,
            titleString: 'Tambah Pegawai',
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
                      labelText: "Nama Pegawai",
                    ),
                    TextFieldWidget(
                      name: 'nama-pegawai',
                      hintText: 'Nama Pegawai',
                      validator: Validator.required(),
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Departemen",
                    ),
                    DropdownWidget2(
                      hintText: 'Departemen',
                      selectedItem: controller.departemenResult,
                      validator: Validator.required(),
                      dropdownItems: controller.listDepartemen,
                      onChanged: (String? newValue){
                        controller.departemenResult = newValue;
                      },
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Divisi",
                    ),
                    DropdownWidget2(
                      hintText: 'Divisi',
                      selectedItem: controller.divisiResult,
                      validator: Validator.required(),
                      dropdownItems: controller.listDivisi,
                      onChanged: (String? newValue){
                        controller.divisiResult = newValue;
                      },
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Nomor Telepon",
                    ),
                    TextFieldWidget(
                      name: 'nomor-telepon',
                      hintText: 'Nomor Telepon',
                      validator: Validator.required(),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Email",
                    ),
                    TextFieldWidget(
                      name: 'email',
                      hintText: 'Email',
                      validator: Validator.required(),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    const LabelFormWidget(
                      labelText: "Whatsapp",
                    ),
                    TextFieldWidget(
                      name: 'whatsapp',
                      hintText: 'Whatsapp',
                      validator: Validator.required(),
                      keyboardType: TextInputType.number,
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
