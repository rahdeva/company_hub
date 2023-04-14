import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../resources/resources.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({
    Key? key,
      required this.hintText,
      required this.name,
      this.label,
      this.onChanged,
      this.suffixIcon,
      this.enabled = true,
      this.firstDate,
      this.lastDate,
      this.currentDate,
      this.initialDate,
      this.inputType, 
      this.validator
  })  : super(key: key);

  final String name;
  final String hintText;
  final bool enabled;
  final String? label;
  final Widget? suffixIcon;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? currentDate;
  final DateTime? initialDate;
  final InputType? inputType;
  final void Function(DateTime?)? onChanged;
  final String? Function(DateTime?)? validator;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      firstDate: firstDate,
      lastDate: lastDate,
      currentDate: currentDate,
      enabled: enabled,
      initialDate: initialDate,
      inputType: inputType ?? InputType.date,
      name: name,
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        labelText: label,
        hintText: hintText,
        contentPadding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        suffixIcon: const Icon(
          IconlyLight.calendar,
          color: AppColors.gray700,
        ),
        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.gray700
        ),
        labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.textColour90
        ),
        errorStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.danger
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.colorPrimary, 
            width: 1
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.danger, 
            width: 1
          ),
        ),
      ),
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: AppColors.textColour90
      ),
      onChanged: onChanged,
      validator: validator,

    );
  }
}
