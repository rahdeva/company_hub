import 'package:company_hub/resources/resources.dart';
import 'package:company_hub/utills/widget/app_bar/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PenghasilanPage extends StatelessWidget {
  const PenghasilanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primaryAppbar(
        context: context,
        titleString: 'Penghasilan',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 100.w,
              margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [AppElevation.elevation4px]
              ),
              child: Wrap(
                spacing: 16,
                children: [
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "PENGHASILAN",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorPrimary
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gaji Pokok",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "7.000.000",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tunjangan Jabatan",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "7.000.000",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tunjangan BPJS Kesehatan",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "7.000.000",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tunjangan BPJS Naker",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "7.000.000",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lembur",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "7.000.000",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bonus",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "7.000.000",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(
                    color: AppColors.colorSecondary,
                    thickness: 1,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total (A)",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "Rp 8.819.200",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),
            const SizedBox(height: 16),
            Container(
              width: 100.w,
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [AppElevation.elevation4px]
              ),
              child: Wrap(
                spacing: 16,
                children: [
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "POTONGAN",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorPrimary
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "BPJS Kesehatan",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "7.000.000",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "BPJS Naker",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "7.000.000",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PPh 21",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "7.000.000",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cicilan Pinjaman",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "7.000.000",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: AppColors.colorSecondary,
                    thickness: 1,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total (B)",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "Rp 1.799.452",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),
            const SizedBox(height: 16),
            Container(
              width: 100.w,
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [AppElevation.elevation4px]
              ),
              child: Wrap(
                spacing: 16,
                children: [
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "PENGHASILAN BERSIH",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorPrimary
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total (A - B)",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColour80,
                        ),
                      ),
                      Text(
                        "Rp 7.019.748",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: AppColors.textColour60,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Keterangan",
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColors.gray900
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 3,
                        width: 3,
                        decoration: BoxDecoration(
                          color: AppColors.gray900,
                          borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 100.w - 45,
                        child: Text(
                          "Data di atas akan di-update setiap awal bulan pada tanggal 1.",
                          textAlign: TextAlign.justify,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.gray900
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          height: 3,
                          width: 3,
                          decoration: BoxDecoration(
                            color: AppColors.gray900,
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 100.w - 45,
                        child: Text(
                          "Jika ada kendala silahkan menghubungi HRD.",
                          textAlign: TextAlign.justify,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.gray900
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
