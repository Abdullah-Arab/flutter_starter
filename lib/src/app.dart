import '/src/services/router/auto_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'constants/themes.dart';

class App extends StatefulWidget {
  App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();

//    @override
//   void initState() {
//     super.initState();
//     notificationHandler(); // init the method on state of the application
//   }

// //create a method that handles notification
//   void notificationHandler() {
//     FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
//     FirebaseMessaging.onMessage.listen((event) async {
//       await NotificationService.pushNotification(event);
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      /* 
      const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ]
       */
      supportedLocales: AppLocalizations.supportedLocales,
      /* const [
        Locale("ar", "LY"), // OR Locale('ar', 'AE') OR Other RTL locales
      ], 
      */
      // locale:  const Locale("ar", "LY") , // OR Locale('ar', 'AE') OR Other RTL locales,
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: primaryTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
