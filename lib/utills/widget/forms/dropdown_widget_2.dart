import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import '../../../resources/resources.dart';

class DropdownWidget2 extends StatelessWidget {
  const DropdownWidget2({
    Key? key,
    required this.hintText,
    required this.dropdownItems,
    required this.selectedItem,
    required this.onChanged,
    this.label,
    this.enabled = true,
    this.validator, 
  }) : super(key: key);

  final String hintText;
  final String? label;
  final bool enabled;
  final String? selectedItem;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final List<String> dropdownItems;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      autoValidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      items: dropdownItems,
      selectedItem: selectedItem,
      enabled: enabled,
      clearButtonProps: const ClearButtonProps(
        isVisible: true,
        color: AppColors.gray700,
      ),
      onChanged: onChanged,
      popupProps: PopupProps.menu(
        showSearchBox: false,
        showSelectedItems: true,
        fit: FlexFit.loose,
        constraints: const BoxConstraints(maxHeight: 300),
        itemBuilder: (context, item, isSelected) {
          return ListTile(
            title: Text(
              item,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.textColour90,
              ),
            ),
          );
        }
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
        baseStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.textColour90,
        ),
        dropdownSearchDecoration: InputDecoration(
          fillColor: Colors.transparent,
          hintText: hintText,
          labelText: label,
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
      ),
      dropdownButtonProps: const DropdownButtonProps(
        icon: Icon(
          Icons.keyboard_arrow_down,
          // size: 22,
          color: AppColors.gray700,
        ),
      ),
    );
  }
}