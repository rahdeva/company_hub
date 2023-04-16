import 'package:company_hub/feature/penghasilan/edit_penghasilan_2/edit_penghasilan_2_controller.dart';
import 'package:get/get.dart';

class EditPenghasilan2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditPenghasilan2Controller>(() => EditPenghasilan2Controller());
  }
}
