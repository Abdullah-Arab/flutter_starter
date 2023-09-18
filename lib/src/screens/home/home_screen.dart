import '/src/blocs/auth/auth_cubit.dart';
import '/src/constants/paddings.dart';
import '/src/constants/themes.dart';
import '/src/screens/auth/auth_screen.dart';
import '/src/screens/components/error_widget.dart';
import '/src/screens/components/loading_widget.dart';
import '/src/services/service_locator/locator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              key: _scaffoldKey,
              body: SafeArea(child: Center(child: _pages[_currentIndex])),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: changeIndex,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
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
