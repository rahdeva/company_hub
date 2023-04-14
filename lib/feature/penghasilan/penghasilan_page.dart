import 'package:company_hub/utills/widget/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PenghasilanPage extends StatelessWidget{
  const PenghasilanPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primaryAppbar(
        context: context,
        titleString: 'txt_menu_notification'.tr,
      ),
      body: Column(
        children: [
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}