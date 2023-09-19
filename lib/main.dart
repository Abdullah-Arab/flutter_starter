import '/firebase_options.dart';
import 'src/features/home/ui/app.dart';
import '/src/constants/storage_keys.dart';
import '/src/services/logger/logger.dart';
import '/src/services/service_locator/locator.dart';
import '/src/services/storage/storage_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //NotificationService.init();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(),
  );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Hive.initFlutter();
  await Hive.openBox('main');
  //Hive.box('main').clear();
  configureDependencies();

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
  );

  // await locator<StorageService>().setString(
  //   StorageKeys.authKey,'test'
  // );
  var x = await locator<StorageService>().getString(
    StorageKeys.authKey,
  );
  locator<Log>().info('App started $x');

  runApp(App());
}
