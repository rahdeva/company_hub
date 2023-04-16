import 'package:company_hub/feature/penghasilan/edit_penghasilan_pegawai_2/edit_penghasilan_pegawai_2_controller.dart';
import 'package:get/get.dart';

class EditPenghasilanPegawai2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditPenghasilanPegawai2Controller>(() => EditPenghasilanPegawai2Controller());
  }
}
