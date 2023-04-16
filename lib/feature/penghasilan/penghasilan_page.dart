import 'package:company_hub/utills/widget/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';

class PenghasilanPage extends StatelessWidget{
  const PenghasilanPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primaryAppbar(
        context: context,
        titleString: 'Penghasilan',
      ),
      body: Column(
        children: [
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}