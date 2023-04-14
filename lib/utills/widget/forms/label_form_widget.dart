import 'package:company_hub/resources/resources.dart';
import 'package:flutter/material.dart';

class LabelFormWidget extends StatelessWidget {
  const LabelFormWidget({
    super.key, 
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 12),
      child: Text(
        labelText,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: AppColors.textColour70
        ),
      ),
    );
  }
}