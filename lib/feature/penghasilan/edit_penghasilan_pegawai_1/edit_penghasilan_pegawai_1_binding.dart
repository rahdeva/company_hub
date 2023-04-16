import 'package:company_hub/feature/penghasilan/edit_penghasilan_pegawai_1/edit_penghasilan_pegawai_1_controller.dart';
import 'package:get/get.dart';

class EditPenghasilanPegawai1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditPenghasilanPegawai1Controller>(() => EditPenghasilanPegawai1Controller());
  }
}
