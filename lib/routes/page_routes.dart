import 'package:company_hub/feature/bottom_nav_bar%20copy/nav_tab_binding.dart';
import 'package:company_hub/feature/bottom_nav_bar%20copy/nav_tab_page.dart';
import 'package:company_hub/feature/pegawai/pegawai_page.dart';
import 'package:company_hub/feature/penghasilan/penghasilan_page.dart';
import 'package:company_hub/feature/tugas/tugas_page.dart';

import '/feature/profile/profile_page.dart';
import 'package:get/get.dart';
import '/feature/login/login_binding.dart';
import '/feature/login/login_page.dart';

import 'page_names.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: PageName.NAVTAB,
      page: () => const NavTabPage(),
      binding: NavTabBinding()
    ),
    GetPage(
      name: PageName.TUGAS, 
      page: () => const TugasPage()
    ),
    GetPage(
      name: PageName.PEGAWAI, 
      page: () => const PegawaiPage()
    ),
    GetPage(
      name: PageName.PENGHASILAN, 
      page: () => const PenghasilanPage()
    ),
    GetPage(
      name: PageName.PROFILE, 
      page: () => const ProfilePage()
    ),
  ];
}
