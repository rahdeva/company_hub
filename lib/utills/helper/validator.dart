import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class Validator {
  static FormFieldValidator<T> required<T>() {
    return FormBuilderValidators.required(errorText: 'Field cannot be empty');
  }

  static String? email(String? value) {
    String pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!))
      return 'txt_valid_email'.tr;
    else
      return null;
  }

  String? password(String? value) {
    String pattern = r'^.{6,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!))
      return 'txt_valid_password'.tr;
    else
      return null;
  }

  String? name(String? value) {
    String pattern = r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!))
      return 'txt_valid_name'.tr;
    else
      return null;
  }

  String? number(String? value) {
    String pattern = r'^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!))
      return 'txt_valid_number'.tr;
    else
      return null;
  }

  String? notEmpty(String? value) {
    String pattern = r'^\S+$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!))
      return 'txt_valid_notEmpty'.tr;
    else
      return null;
  }
}
