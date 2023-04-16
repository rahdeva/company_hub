import 'package:company_hub/feature/tugas/tambah_tugas/tambah_tugas_controller.dart';
import 'package:get/get.dart';

class TambahTugasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TambahTugasController>(() => TambahTugasController());
  }
}
