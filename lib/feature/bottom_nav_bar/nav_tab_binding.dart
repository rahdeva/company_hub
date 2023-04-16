import 'package:company_hub/feature/bottom_nav_bar/nav_tab_controller.dart';
import 'package:company_hub/feature/login/login_controller.dart';
import 'package:company_hub/feature/pegawai/pegawai_controller.dart';
import 'package:company_hub/feature/penghasilan/penghasilan_controller.dart';
import 'package:company_hub/feature/tugas/tugas_controller.dart';
import 'package:get/get.dart';
import '/feature/profile/profile_controller.dart';

class NavTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavTabController>(() => NavTabController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<TugasController>(() => TugasController());
    Get.lazyPut<PegawaiController>(() => PegawaiController());
    Get.lazyPut<PenghasilanController>(() => PenghasilanController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
