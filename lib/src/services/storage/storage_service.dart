import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  //static 
  //static StorageService? _instance;



  Future<String?> getString(String key) async {
     Box box =  Hive.box('main');
    return box.get(key);
    // return prefs?.getString(key);
  }

  Future<void> setString(String key, String value) async {
    // var box = Hive.box('main');
Box box =  Hive.box('main');
    await box.put(key, value);
    //  await prefs?.setString(key, value);
  }

  Future<void> clearAll() async {
    Box box =  Hive.box('main');
    await box.clear();
  }
}
