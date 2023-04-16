// ignore_for_file: constant_identifier_names

import 'package:company_hub/data/storage_constants.dart';
import 'package:company_hub/data/storage_manager.dart';

class AuthHelper {
  var storage = StorageManager();
  
  setAuth(username){
    if(username == "admin"){
      storage.write(StorageName.USERS, "Admin");
    } else{
      storage.write(StorageName.USERS, "Pegawai");
    }
  }

  getUserType(){
    // return storage.get(StorageName.USERS);
    if (storage.has(StorageName.USERS)) {
      return storage.get(StorageName.USERS);
    } else {
      return "Pegawai";
    }
  }
  
}