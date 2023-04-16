import 'package:company_hub/feature/penghasilan/penghasilan_pegawai/penghasilan_pegawai_controller.dart';
import 'package:get/get.dart';

class PenghasilanPegawaiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PenghasilanPegawaiController>(() => PenghasilanPegawaiController());
  }
}
