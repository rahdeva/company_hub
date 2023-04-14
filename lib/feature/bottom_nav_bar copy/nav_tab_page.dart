import 'package:company_hub/feature/pegawai/pegawai_page.dart';
import 'package:company_hub/feature/penghasilan/penghasilan_page.dart';
import 'package:company_hub/feature/tugas/tugas_page.dart';
import 'package:company_hub/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '/feature/profile/profile_page.dart';
import '/utills/widget/colored_status_bar.dart';

import 'nav_tab_controller.dart';

class NavTabPage extends StatelessWidget {
  const NavTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavTabController>(
      builder: (controller) {
        return ColoredStatusBar(
          child: Scaffold(
            body: SafeArea(
              child: IndexedStack(
                index: controller.tabIndex,
                children: const [
                  TugasPage(),
                  PegawaiPage(),
                  PenghasilanPage(),
                  ProfilePage(),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: AppColors.surface,
                boxShadow: [AppElevation.elevation4px],
              ),
              child: GNav(
                selectedIndex: controller.tabIndex,
                onTabChange: (index) => controller.changeTabIndex(index),
                gap: 4,
                activeColor: AppColors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                tabMargin: const EdgeInsets.symmetric(vertical: 16.0,),
                duration: const Duration(milliseconds: 400),
                tabBorderRadius: 10,
                tabBackgroundColor: AppColors.colorPrimary,
                color: AppColors.gray400,
                tabBackgroundGradient: AppGradient.primaryGradient,
                tabs: [
                  GButton(
                    gap: 10,
                    margin: const EdgeInsets.only(left: 16),
                    icon: IconlyLight.home,
                    text: 'Tugas',
                    textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.white
                    )
                  ),
                  GButton(
                    gap: 10,
                    icon: IconlyLight.user3,
                    text: 'Pegawai',
                    textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.white
                    )
                  ),
                  GButton(
                    gap: 10,
                    icon: IconlyLight.notification,
                    text: 'Penghasilan',
                    textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.white
                    )
                  ),
                  GButton(
                    gap: 10,
                    margin: const EdgeInsets.only(right: 16),
                    icon: IconlyLight.profile,
                    text: 'Profile',
                    textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.white
                    )
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
