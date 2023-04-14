import 'package:company_hub/resources/resources.dart';
import 'package:company_hub/routes/page_names.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '/feature/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      initState: (_) {},
      builder: (controller) {
        return Scaffold(
            body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AppImages.imgBgHome.image().image,
                    fit: BoxFit.cover),
              ),
              height: 200,
            ),
            Container(
              padding: const EdgeInsets.only(top: 170),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 100, left: 24, right: 24),
                      width: width,
                      decoration: const BoxDecoration(
                        // color: Colors.blue,
                        color: AppColors.background,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32)),
                      ),
                      // color: Color.fromARGB(255, 80, 229, 0),
                      child: Column(
                        children: [
                          const ProfileText(),
                          const SizedBox(
                            height: 40,
                          ),
                          const ProfileMenu()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ProfilePicture(width: width)
          ],
        ));
      },
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 120, left: width * 0.37),
      child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(12)),
          height: 109,
          width: 109,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AppImages.imgDummyProfile.image().image),
            ),
          )),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            margin: const EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [AppElevation.elevation4px],
                color: Colors.white),
            child: Row(
              children: [
                const Icon(
                  IconlyBold.infoSquare,
                  color: AppColors.colorPrimary,
                ),
                const SizedBox(
                  width: 14,
                ),
                Text(
                  "Informasi Tentang Perusahaan",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColors.gray900,
                      ),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Get.offAllNamed(PageName.LOGIN);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            margin: const EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [AppElevation.elevation4px],
            ),
            child: Row(
              children: [
                const Icon(
                  IconlyBold.logout,
                  color: AppColors.colorPrimary,
                ),
                const SizedBox(
                  width: 14,
                ),
                Text(
                  "Logout",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColors.gray900,
                      ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileText extends StatelessWidget {
  const ProfileText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Grandi Ekabuana",
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.gray900,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "IT Web & Mobile Developer",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: AppColors.gray900,
              ),
        ),
        const SizedBox(
          height: 11,
        ),
        Text(
          "02223489",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.gray900,
              ),
        ),
      ],
    );
  }
}
