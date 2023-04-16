import 'package:company_hub/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

class EditFloatingActionButton extends StatelessWidget {
  const EditFloatingActionButton({
    super.key, 
    required this.onTap,
  });

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [AppElevation.elevation7px],
          color: AppColors.warning
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          children: [
            const Icon(
              IconlyLight.editSquare,
              color: AppColors.white,
            ),
            Text(
              "Edit",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}