import 'package:company_hub/resources/resources.dart';
import 'package:company_hub/routes/page_names.dart';
import 'package:company_hub/utills/widget/snackbar/snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

enum LoginMethod { username, google, microsoft }

class LoginController extends GetxController {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  bool isObscure = true;

  void loginWithEmail(String username, String password){
    if(
      username == "admin" &&
      password == "12345"
    ){
      Get.offAllNamed(PageName.NAVTAB);
    } else{
      SnackbarWidget.defaultSnackbar(
        icon: const Icon(
          Icons.cancel,
          color: AppColors.red,
        ),
        subtitle: "Username atau Password salah",
        title: "Login Gagal!"
      );
    }
  }
}
