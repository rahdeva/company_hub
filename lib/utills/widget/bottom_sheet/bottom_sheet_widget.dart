import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '/resources/resources.dart';

class BottomSheetWidget {
  /// Bottom sheet with drag indicator bar.
  static Future<T?> showBarBottomSheet<T>(
    BuildContext context,
    {
      required Widget Function(BuildContext) builder,
      bool expand = false,
      bool enableDrag = true,
    }) {
    return showBarModalBottomSheet(
      context: context,
      barrierColor: Colors.black.withOpacity(0.35),
      backgroundColor: AppColors.background,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: builder,
      expand: expand,
      isDismissible: true,
      enableDrag: enableDrag,
      topControl: ClipRRect(
        borderRadius: BorderRadius.circular(2),
        child: Container(
          width: 52,
          height: 5,
          color: Colors.white,
        ),
      ),
    );
  }

  /// Bottom sheet without drag indicator.
  static Future<T?> showBottomSheet<T>(
    BuildContext context,
    {
      required Widget Function(BuildContext) builder, 
      bool expand = false
    }) {
    return showMaterialModalBottomSheet(
      context: context,
      barrierColor: Colors.black.withOpacity(0.35),
      backgroundColor: AppColors.background,
      clipBehavior: Clip.antiAlias,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: builder,
      expand: expand,
      isDismissible: true,
      enableDrag: true,
    );
  }

  /// simple Bottom Sheet
  static Future<T?> showSimpleBottomSheet<T>(
    BuildContext context,
    {
      required Widget bottomSheetContent,
      bool expand = false,
      bool enableDrag = true,
      required String titleText,
    }) {
    return showMaterialModalBottomSheet(
      context: context,
      barrierColor: Colors.black.withOpacity(0.35),
      backgroundColor: AppColors.background,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return Container(
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      titleText,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: AppColors.textColour80
                      ),
                    ),
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.close_rounded,
                        size: 24,
                        color: AppColors.textColour80,
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                bottomSheetContent,
                const SizedBox(height: 24),
              ],
            ),
          ),
        );
      },
      expand: expand,
      isDismissible: true,
      enableDrag: enableDrag,
    );
  }
}


