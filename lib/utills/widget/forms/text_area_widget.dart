import 'package:company_hub/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TextAreaWidget extends StatelessWidget {
  const TextAreaWidget({
    Key? key,
    required this.name,
    required this.hintText,
    this.initialValue,
    this.label,
    this.enabled = true,
    this.minLines = 12, 
    this.maxLines = 20,
    this.keyboardType = TextInputType.multiline,
    this.onChanged,
    this.validator, 
    this.suffixIcon, 
    required this.reviewResultC,
    required this.maxLength, 
  }) : super(key: key);

  final String name;
  final String hintText;
  final int maxLength;
  final String? label;
  final Widget? suffixIcon;
  final bool enabled;
  final int minLines;
  final int maxLines;
  final RxString reviewResultC;
  final String? initialValue;
  final TextInputType? keyboardType;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100.w,
          height: 120,
          child: FormBuilderTextField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            name: name,
            enabled: enabled,
            initialValue: initialValue,
            validator: validator,
            keyboardType: keyboardType,
            onChanged: onChanged,
            minLines: minLines,
            maxLines: maxLines,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.textColour90
            ),
            decoration: InputDecoration(
              fillColor: enabled 
                ? Colors.transparent
                : AppColors.textColour10,
              labelText: label,
              hintText: hintText,
              suffixIcon: suffixIcon,
              contentPadding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
              hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.gray700
              ),
              labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.textColour90
              ),
              errorStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.danger
              ),
              enabledBorder: !enabled 
                ? OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.colorSecondary,
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(8),
                )
                : null,
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
          ),
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerRight,
          child: Obx(
            () => Text(
              "${reviewResultC.value.length}/$maxLength",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.textColour50
              ),
            ),
          ),
        ),
      ],
    );
  }
}
