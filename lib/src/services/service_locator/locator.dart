
import '../../features/auth/logic/auth_cubit.dart';
import '/src/services/firebase/firebase_sevice.dart';
import '/src/services/logger/logger.dart';
import '/src/services/storage/storage_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> configureDependencies() async {
  // locator.registerSingletonAsync<StorageService>(()=>StorageService.getInstance());
  //await _setupStorage();
  locator.registerSingleton<StorageService>(StorageService());
  locator.registerSingleton<Log>(Log());
  locator.registerSingleton<FirebaseService>(FirebaseService());
  locator.registerLazySingleton<AuthCubit>(() => AuthCubit());
}

// Future<void> _setupStorage() async {
//   final instance = await StorageService.getInstance();
//   locator.registerSingleton<StorageService>( instance!);
// }
