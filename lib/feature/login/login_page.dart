import 'package:company_hub/resources/resources.dart';
import 'package:company_hub/routes/page_names.dart';
import 'package:company_hub/utills/widget/button/primary_button.dart';
import 'package:company_hub/utills/widget/colored_status_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import '/utills/helper/validator.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredStatusBar(
      color: AppColors.background,
      child: Scaffold(
        body: SafeArea(
          top: true,
          bottom: true,
          child: GetBuilder<LoginController>(
            init: LoginController(),
            builder: (controller) {
              return FormBuilder(
                key: controller.formKey,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 80),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AppImages.imgSCMHubLogo.image().image
                            )
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "txt_general_scm_hub".tr,
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.colorPrimary
                          ),
                        ),
                        const SizedBox(height: 40),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "txt_general_username".tr,
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppColors.textColour70
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        FormBuilderTextField(
                          name: 'username',
                          decoration: InputDecoration(
                            hintText: 'txt_general_username'.tr,
                          ),
                          validator: Validator.required(),
                          keyboardType: TextInputType.emailAddress,
                          maxLines: 1,
                          onChanged: (text) {
                          }
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 16),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "txt_general_password".tr,
                                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                  color: AppColors.textColour70
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            FormBuilderTextField(
                              name: 'password',
                              decoration: InputDecoration(
                                isDense: true,
                                hintText: 'txt_general_password'.tr,
                                suffixIcon: IconButton(
                                  onPressed: (){},
                                  icon: const Icon(Icons.remove_red_eye),
                                  color: AppColors.colorSecondary,
                                )
                              ),
                              validator: Validator.required(),
                              obscureText: true,
                              maxLines: 1,
                            ),
                            const SizedBox(height: 24),
                            PrimaryButton(
                              title: 'txt_button_sign_in'.tr,
                              onPressed: () async {
                                Get.offAllNamed(PageName.NAVTAB);
                              }
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
