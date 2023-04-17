import 'package:company_hub/resources/resources.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:sizer/sizer.dart';
import '/feature/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    image: AppImages.imgBgProfile.image().image,
                    fit: BoxFit.cover
                  ),
                ),
                height: 200,
              ),
              Container(
                padding: const EdgeInsets.only(top: 170),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 172, left: 24, right: 24),
                        width: 100.w,
                        decoration: const BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32)
                          ),
                        ),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Text(
                                  controller.name,
                                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                                    color: AppColors.gray900,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  controller.department,
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: AppColors.gray900,
                                  ),
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                Text(
                                  controller.role,
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AppColors.gray900,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    controller.informasiPerusahaan();
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                                    margin: const EdgeInsets.only(bottom: 24),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [AppElevation.elevation4px],
                                      color: Colors.white
                                    ),
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
                                    controller.signOut();
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 120, left: 100.w * 0.265),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [ AppElevation.elevation4px ]
                  ),
                  height: 184,
                  width: 184,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AppImages.imgPerson02.image().image
                      ),
                    ),
                  )
                ),
              ),
            ],
          )
        );
      },
    );
  }
}