import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../resources/resources.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    Key? key,
    required this.name,
    required this.hintText,
    required this.dropdownItems,
    this.initialValue,
    this.label,
    this.enabled = true,
    this.onChanged,
    this.validator, 
    this.suffixIcon, 
  }) : super(key: key);

  final String name;
  final String hintText;
  final String? label;
  final Widget? suffixIcon;
  final bool enabled;
  final String? initialValue;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final List<String> dropdownItems;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      items: dropdownItems.map(
        (item) => DropdownMenuItem(
          value: item,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            item,
            textAlign: TextAlign.left,
            overflow: TextOverflow.visible,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.textColour90
            ),
          ),
        )
      ).toList(),
      selectedItemBuilder: (context) => dropdownItems.map(
        (value) => Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.fade,
          softWrap: false,
        )
      ).toList(),
      enabled: enabled,
      name: name,
      icon: Container(
        alignment: Alignment.center,
        child: const Icon(
          Icons.keyboard_arrow_down,
          size: 22,
          color: AppColors.gray700,
        ),
      ),
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        labelText: label,
        hintText: hintText,
        contentPadding: const EdgeInsets.fromLTRB(20, 12, 12, 12),
        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.gray700,
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
        overflow: TextOverflow.ellipsis,
        color: AppColors.textColour90,
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}