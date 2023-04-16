import 'package:company_hub/data/storage_manager.dart';
import 'package:company_hub/routes/page_names.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final String name = "Jack Kahuna Laguna";
  final String department = "IT (Information Technology)";
  final String role = "Programmer";
  var storage = StorageManager();

  void signOut() {
    storage.clearAll();
    Get.toNamed(PageName.LOGIN);
  }

  void informasiPerusahaan() {

  }
}
