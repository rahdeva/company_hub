import 'package:company_hub/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PegawaiController extends GetxController {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  final List<Employee> employeeData = [
    Employee(
      name: "Sarah Johnson",
      profilePict: AppImages.imgPerson01.image().image,
      department: 'Keuangan', 
      division: 'Akuntansi', 
      email: 'sarah@gmail.com', 
      phoneNumber: '081334220782', 
      whatsappNumber: '081334220782'
    ),
    Employee(
      name: "John Smith",
      profilePict: AppImages.imgPerson02.image().image,
      department: 'Pemasaran', 
      division: 'Penjualan', 
      email: 'john@gmail.com', 
      phoneNumber: '081334220782', 
      whatsappNumber: '081334220782'
    ),
    Employee(
      name: "Emma Davis",
      profilePict: AppImages.imgPerson03.image().image,
      department: 'HRD', 
      division: 'Rekrutmen', 
      email: 'emma@gmail.com', 
      phoneNumber: '081334220782', 
      whatsappNumber: '081334220782'
    ),
    Employee(
      name: "Jack Kahuna Laguna",
      profilePict: AppImages.imgPerson04.image().image,
      department: 'Teknologi Informasi', 
      division: 'Programmer', 
      email: 'jack@gmail.com', 
      phoneNumber: '081334220782', 
      whatsappNumber: '081334220782'
    ),
    Employee(
      name: "Jennifer Brown",
      profilePict: AppImages.imgPerson05.image().image,
      department: 'Administrasi', 
      division: 'Pembukuan', 
      email: 'jennifer@gmail.com', 
      phoneNumber: '081334220782', 
      whatsappNumber: '081334220782'
    ),
    Employee(
      name: "Michael Wilson",
      profilePict: AppImages.imgPerson06.image().image,
      department: 'Logistik', 
      division: 'Pengiriman Barang', 
      email: 'micheal@gmail.com', 
      phoneNumber: '081334220782', 
      whatsappNumber: '081334220782'
    ),
  ];

  void call({required String phoneNumber}){

  }

  void email({required String email}){

  }

  void whatsapp({required String whatsappNumber}){

  }
}

class Employee {
  final ImageProvider profilePict;
  final String name;
  final String department;
  final String division;
  final String phoneNumber;
  final String email;
  final String whatsappNumber;

  Employee({
    required this.profilePict,
    required this.name,
    required this.department, 
    required this.division, 
    required this.phoneNumber, 
    required this.email, 
    required this.whatsappNumber
  });
}