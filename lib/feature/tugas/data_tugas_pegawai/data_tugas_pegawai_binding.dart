import 'package:company_hub/feature/tugas/data_tugas_pegawai/data_tugas_pegawai_controller.dart';
import 'package:get/get.dart';

class DataTugasPegawaiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataTugasPegawaiController>(() => DataTugasPegawaiController());
  }
}
