import 'package:company_hub/feature/tugas/tugas_pegawai/tugas_pegawai_controller.dart';
import 'package:get/get.dart';

class TugasPegawaiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TugasPegawaiController>(() => TugasPegawaiController());
  }
}
