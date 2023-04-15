import 'package:company_hub/resources/resources.dart';
import 'package:company_hub/routes/page_names.dart';
import 'package:company_hub/utills/widget/button/primary_button.dart';
import 'package:company_hub/utills/widget/colored_status_bar.dart';
import 'package:company_hub/utills/widget/forms/label_form_widget.dart';
import 'package:company_hub/utills/widget/forms/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import '/utills/helper/validator.dart';
import 'package:sizer/sizer.dart';

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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 80),
                        Container(
                          width: 100.w - 40,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AppImages.imgCompanyhubLogo.image().image
                            )
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: AppColors.surface,
                            boxShadow: [AppElevation.elevation4px]
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 16),
                              Text(
                                "Login",
                                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.colorPrimary
                                ),
                              ),
                              const SizedBox(height: 32),
                              const LabelFormWidget(
                                labelText: "Username",
                              ),
                              TextFieldWidget(
                                name: 'username',
                                hintText: 'Username',
                                validator: Validator.required(),
                              ),
                              const SizedBox(height: 16),
                              const LabelFormWidget(
                                labelText: "Password",
                              ),
                              TextFieldWidget(
                                name: 'password',
                                hintText: 'Password',
                                obsecure: controller.isObscure,
                                validator: Validator.required(),
                                keyboardType: TextInputType.text,
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.isObscure = !controller.isObscure;
                                    controller.update();
                                  },
                                  icon: controller.isObscure
                                    ? const Icon(
                                        Icons.visibility_outlined,
                                        size: 20,
                                        color: AppColors.colorPrimary,
                                      )
                                    : const Icon(
                                        Icons.visibility_off_outlined,
                                        size: 20,
                                        color: AppColors.colorPrimary,
                                      ),
                                ), 
                              ),
                              const SizedBox(height: 24),
                              PrimaryButton(
                                title: 'Sign in',
                                onPressed: () async {
                                  if (
                                    controller.formKey.currentState != null && 
                                    controller.formKey.currentState!.saveAndValidate()
                                  ) {
                                    controller.loginWithEmail(
                                      controller.formKey.currentState!.fields["username"]!.value,
                                      controller.formKey.currentState!.fields["password"]!.value,
                                    );
                                  }
                                }
                              ),
                            ],
                          ),
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
