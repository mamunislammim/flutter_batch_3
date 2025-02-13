import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppLocalData {
  FlutterSecureStorage a = const FlutterSecureStorage();

  // New Data File Create
   dataInsertFun({required String key, required String value}) async {
    await a.write(key: key, value: value);
    log("====Data Saved Successfully==============");
  }

  dataGetFun({required String key}) async {
    String? value = await a.read(key: key);
    log("=====Result : ===\$value===================");
    return value;
  }

  dataDeleteFun({required String key}) async {
    await a.delete(key: key);
    log("====Data Delete Successfully==============");
  }

  dataAllDeleteFun() async {
    await a.deleteAll();
    log("====All Data Delete Successfully==============");
  }
}
