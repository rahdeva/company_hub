import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class TambahPegawaiController extends GetxController {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  final List<String> listDepartemen = const ['Keuangan', 'Pemasaran', 'HRD', 'Teknologi Informasi', 'Administrasi', 'Logistik'];
  final List<String> listDivisi = const ['Akuntansi', 'Penjualan', 'Rekrutmen', 'Programmer', 'Pembukuan', 'Pengiriman Barang'];
  
  String? departemenResult;
  String? divisiResult;
}