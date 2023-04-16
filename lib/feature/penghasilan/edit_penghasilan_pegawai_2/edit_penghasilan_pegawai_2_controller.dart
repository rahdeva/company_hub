import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class EditPenghasilanPegawai2Controller extends GetxController {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  final Penghasilan penghasilan = Penghasilan(
    gajiPokok: "7.000.000", 
    tunjanganJabatan: "1.000.000", 
    tunjanganBPJSKesehatan: "320.000",
    tunjanganBPJSNaker: "499.200", 
    lembur: "0", 
    bonus: "0"
  );
  
  final Potongan potongan = Potongan(
    bpjsKesehatan: "400.000", 
    bpjsNaker: "739.200", 
    pph21: "160.252", 
    cicilanPinjaman: "500.000"
  );

  String getTotalA(){
    const String totalA = "Rp 8.819.200";
    return totalA;
  }

  String getTotalB(){
    const String totalA = "Rp 1.799.452";
    return totalA;
  }

  String getPenghasilanBersih(){
    const String penghasilanBersih = "Rp 7.019.748";
    return penghasilanBersih;
  }
}

class Penghasilan{
  final String gajiPokok;
  final String tunjanganJabatan;
  final String tunjanganBPJSKesehatan;
  final String tunjanganBPJSNaker;
  final String lembur;
  final String bonus;

  Penghasilan({
    required this.gajiPokok,
    required this.tunjanganJabatan,
    required this.tunjanganBPJSKesehatan,
    required this.tunjanganBPJSNaker,
    required this.lembur,
    required this.bonus,
  });
}

class Potongan{
  final String bpjsKesehatan;
  final String bpjsNaker;
  final String pph21;
  final String cicilanPinjaman;

  Potongan({
    required this.bpjsKesehatan,
    required this.bpjsNaker,
    required this.pph21,
    required this.cicilanPinjaman,
  });
}