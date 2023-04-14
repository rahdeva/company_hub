import 'package:company_hub/resources/resources.dart';
import 'package:company_hub/utills/widget/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class PopUpWidget{
  // Default Pop Up
  static Future<dynamic> defaultPopUp({
    required BuildContext context,
    required String titleString, 
    required String middleText, 
    Widget? content, 
  }) {
    return Get.defaultDialog(
      backgroundColor: AppColors.surface,
      radius : 8,
      title: titleString,
      titleStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
        color: AppColors.textColour80
      ),
      titlePadding: const EdgeInsets.only(top: 40),
      contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      content: SizedBox(
        width: 100.w,
        child: Column(
          children: [
            Text(
              middleText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.gray600
              ),
            ),
            content ?? const SizedBox(),
          ],
        ),
      ),
    );
  }

  // Success and Fail PopUp
  static Future<dynamic> successAndFailPopUp({
    required BuildContext context,
    required String titleString, 
    required String middleText, 
    required String buttonText,
    bool isSuccess = true,
    Function()? buttonOnPressed,
  }) {
    return Get.defaultDialog(
      backgroundColor: AppColors.surface,
      radius : 8,
      title: "",
      contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      content: SizedBox(
        width: 100.w,
        child: Column(
          children: [
            Lottie.asset(
              isSuccess 
                ? AppImages.lottieSuccess 
                : AppImages.lottieFailed,
              repeat: false,
              width: 50.w
            ),
            const SizedBox(height: 8),
            Text(
              titleString,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: AppColors.textColour80
              ),
            ),
            const SizedBox(height: 24),
            Text(
              middleText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.gray600
              ),
            ),
            const SizedBox(height: 24),
            PrimaryButton(
              title: buttonText,
              onPressed: buttonOnPressed ?? () => Get.back()
            ),
          ],
        ),
      ),
    );
  }
}