
import '../../auth/logic/auth_cubit.dart';
import '../../auth/ui/auth_screen.dart';
import '../../../utilities/components/error_widget.dart';
import '../../../utilities/components/loading_widget.dart';
import '/src/services/service_locator/locator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Widget> _pages = const [
    Text('Home'),
    Text("Profile"),
    Text("settings"),
  ];
  int _currentIndex = 0;
  void changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
    _scaffoldKey.currentState!.closeDrawer();
  }

  String? statusId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      bloc: locator<AuthCubit>(),
      builder: (context, state) {
        return state.maybeMap(
          authenticated: (state) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  AppLocalizations.of(context)!.appTitle,
                ),
                centerTitle: true,
              ),
              key: _scaffoldKey,
              body: SafeArea(child: Center(child: _pages[_currentIndex])),
              bottomNavigationBar: NavigationBar(
                selectedIndex: _currentIndex,
                onDestinationSelected: changeIndex,
                destinations: [
                  NavigationDestination(
                    icon: const Icon(Icons.home),
                    label: AppLocalizations.of(context)!.home,
                  ),
                  NavigationDestination(
                    icon: const Icon(Icons.person),
                    label: AppLocalizations.of(context)!.profile,
                  ),
                  NavigationDestination(
                    icon: const Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings,
                  ),
                ],
              ),
            );
          },
          error: (value) {
            return Scaffold(
              body: Center(
                child: CustomErrorWidget(
                  message: value.message,
                  onRetry: () {
                    locator<AuthCubit>().getAuth();
                  },
                ),
              ),
            );
          },
          unauthenticated: (value) {
            return const AuthScreen();
          },
          orElse: () {
            return const Scaffold(
              body: LoadingWidget(),
            );
          },
        );
      },
    );
  }
}
