import 'package:company_hub/feature/bottom_nav_bar/nav_tab_binding.dart';
import 'package:company_hub/feature/bottom_nav_bar/nav_tab_page.dart';
import 'package:company_hub/feature/login/login_binding.dart';
import 'package:company_hub/feature/login/login_page.dart';
import 'package:company_hub/feature/pegawai/pegawai_page.dart';
import 'package:company_hub/feature/pegawai/tambah_pegawai/tambah_pegawai_binding.dart';
import 'package:company_hub/feature/pegawai/tambah_pegawai/tambah_pegawai_page.dart';
import 'package:company_hub/feature/penghasilan/data_penghasilan_pegawai/data_penghasilan_pegawai_binding.dart';
import 'package:company_hub/feature/penghasilan/data_penghasilan_pegawai/data_penghasilan_pegawai_page.dart';
import 'package:company_hub/feature/penghasilan/edit_penghasilan_1/edit_penghasilan_1_binding.dart';
import 'package:company_hub/feature/penghasilan/edit_penghasilan_1/edit_penghasilan_1_page.dart';
import 'package:company_hub/feature/penghasilan/edit_penghasilan_2/edit_penghasilan_2_binding.dart';
import 'package:company_hub/feature/penghasilan/edit_penghasilan_2/edit_penghasilan_2_page.dart';
import 'package:company_hub/feature/penghasilan/edit_penghasilan_pegawai_1/edit_penghasilan_pegawai_1_binding.dart';
import 'package:company_hub/feature/penghasilan/edit_penghasilan_pegawai_1/edit_penghasilan_pegawai_1_page.dart';
import 'package:company_hub/feature/penghasilan/edit_penghasilan_pegawai_2/edit_penghasilan_pegawai_2_binding.dart';
import 'package:company_hub/feature/penghasilan/edit_penghasilan_pegawai_2/edit_penghasilan_pegawai_2_page.dart';
import 'package:company_hub/feature/penghasilan/penghasilan_page.dart';
import 'package:company_hub/feature/penghasilan/penghasilan_pegawai/penghasilan_pegawai_binding.dart';
import 'package:company_hub/feature/penghasilan/penghasilan_pegawai/penghasilan_pegawai_page.dart';
import 'package:company_hub/feature/profile/profile_page.dart';
import 'package:company_hub/feature/tugas/data_tugas_pegawai/data_tugas_pegawai_binding.dart';
import 'package:company_hub/feature/tugas/data_tugas_pegawai/data_tugas_pegawai_page.dart';
import 'package:company_hub/feature/tugas/tambah_tugas/tambah_tugas_binding.dart';
import 'package:company_hub/feature/tugas/tambah_tugas/tambah_tugas_page.dart';
import 'package:company_hub/feature/tugas/tambah_tugas_pegawai/tambah_tugas_pegawai_binding.dart';
import 'package:company_hub/feature/tugas/tambah_tugas_pegawai/tambah_tugas_pegawai_page.dart';
import 'package:company_hub/feature/tugas/tugas_page.dart';
import 'package:company_hub/feature/tugas/tugas_pegawai/tugas_pegawai_binding.dart';
import 'package:company_hub/feature/tugas/tugas_pegawai/tugas_pegawai_page.dart';
import 'package:get/get.dart';
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
      name: PageName.TAMBAH_TUGAS, 
      page: () => const TambahTugasPage(),
      binding: TambahTugasBinding()
    ),
    GetPage(
      name: PageName.DATA_TUGAS_PEGAWAI, 
      page: () => const DataTugasPegawaiPage(),
      binding: DataTugasPegawaiBinding()
    ),
    GetPage(
      name: PageName.TAMBAH_TUGAS_PEGAWAI, 
      page: () => const TambahTugasPegawaiPage(),
      binding: TambahTugasPegawaiBinding()
    ),
    GetPage(
      name: PageName.TUGAS_PEGAWAI, 
      page: () => const TugasPegawaiPage(),
      binding: TugasPegawaiBinding()
    ),
    GetPage(
      name: PageName.PEGAWAI, 
      page: () => const PegawaiPage()
    ),
    GetPage(
      name: PageName.TAMBAH_PEGAWAI, 
      page: () => const TambahPegawaiPage(),
      binding: TambahPegawaiBinding()
    ),
    GetPage(
      name: PageName.PENGHASILAN, 
      page: () => const PenghasilanPage()
    ),
    GetPage(
      name: PageName.EDIT_PENGHASILAN_1, 
      page: () => const EditPenghasilan1Page(),
      binding: EditPenghasilan1Binding()
    ),
    GetPage(
      name: PageName.EDIT_PENGHASILAN_2, 
      page: () => const EditPenghasilan2Page(),
      binding: EditPenghasilan2Binding()
    ),
    GetPage(
      name: PageName.DATA_PENGHASILAN_PEGAWAI, 
      page: () => const DataPenghasilanPegawaiPage(),
      binding: DataPenghasilanPegawaiBinding()
    ),
    GetPage(
      name: PageName.EDIT_PENGHASILAN_PEGAWAI_1, 
      page: () => const EditPenghasilanPegawai1Page(),
      binding: EditPenghasilanPegawai1Binding()
    ),
    GetPage(
      name: PageName.EDIT_PENGHASILAN_PEGAWAI_2, 
      page: () => const EditPenghasilanPegawai2Page(),
      binding: EditPenghasilanPegawai2Binding()
    ),
    GetPage(
      name: PageName.PENGHASILAN_PEGAWAI, 
      page: () => const PenghasilanPegawaiPage(),
      binding: PenghasilanPegawaiBinding()
    ),
    GetPage(
      name: PageName.PROFILE, 
      page: () => const ProfilePage()
    ),
  ];
}
