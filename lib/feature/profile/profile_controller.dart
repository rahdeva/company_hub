import 'package:company_hub/routes/page_names.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {

  void signOut() async {
    Get.toNamed(PageName.LOGIN);
  }
}
