import 'package:company_hub/feature/penghasilan/data_penghasilan_pegawai/data_penghasilan_pegawai_controller.dart';
import 'package:get/get.dart';

class DataPenghasilanPegawaiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataPenghasilanPegawaiController>(() => DataPenghasilanPegawaiController());
  }
}
