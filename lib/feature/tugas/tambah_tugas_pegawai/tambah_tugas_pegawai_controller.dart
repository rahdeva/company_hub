import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class TambahTugasPegawaiController extends GetxController {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  
  String? dropdownResult;

  final List<String> listProject = const ['Project 1', 'Project 2', 'Project 3'];
}