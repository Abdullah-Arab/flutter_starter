
import 'package:shared_preferences/shared_preferences.dart';

abstract class PrefUtils {
  static final Future<SharedPreferences> prefs =
      SharedPreferences.getInstance();

}

enum AUTH_STORE { auth, isLoggedIn, user }