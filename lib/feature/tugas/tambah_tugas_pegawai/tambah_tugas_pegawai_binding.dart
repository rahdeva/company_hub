import 'package:company_hub/feature/tugas/tambah_tugas_pegawai/tambah_tugas_pegawai_controller.dart';
import 'package:get/get.dart';

class TambahTugasPegawaiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TambahTugasPegawaiController>(() => TambahTugasPegawaiController());
  }
}
