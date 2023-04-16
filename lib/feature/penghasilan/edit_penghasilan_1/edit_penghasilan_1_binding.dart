import 'package:company_hub/feature/penghasilan/edit_penghasilan_1/edit_penghasilan_1_controller.dart';
import 'package:get/get.dart';

class EditPenghasilan1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditPenghasilan1Controller>(() => EditPenghasilan1Controller());
  }
}
