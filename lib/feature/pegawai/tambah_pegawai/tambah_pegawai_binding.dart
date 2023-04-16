import 'package:company_hub/feature/pegawai/tambah_pegawai/tambah_pegawai_controller.dart';
import 'package:get/get.dart';

class TambahPegawaiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TambahPegawaiController>(() => TambahPegawaiController());
  }
}
