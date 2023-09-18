import 'package:hive_flutter/hive_flutter.dart';

import '/src/blocs/auth/auth_cubit.dart';
import '/src/constants/gaps.dart';
import '/src/constants/paddings.dart';
import '/src/services/logger/logger.dart';
import '/src/services/service_locator/locator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../constants/themes.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isConfirmPasswordVisible = true;
  bool _isPasswordVisible = true;
  bool _isSignup = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        margin: paddingH16,
        height: double.infinity,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    color: primaryColor,
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Expanded(
                      //   // width: double.infinity,
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.circular(defaultRadius),
                      //     child: Image.asset(
                      //       'assets/images/img2.jpg',
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: paddingH16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            gapH32,
                            Text(
                              AppLocalizations.of(context)!.welcome,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            gapH16,
                            Text(
                              AppLocalizations.of(context)!.welcomeMessage,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            gapH32,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: double.infinity,
                // height: _isSignup
                //     ? MediaQuery.of(context).size.height * 0.8
                //     : MediaQuery.of(context).size.height * 0.6,

                decoration: roundedRectangleFromTop,
                padding: paddingH16,
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gapH32,
                      Text(
                        _isSignup
                            ? AppLocalizations.of(context)!.register
                            : AppLocalizations.of(context)!.login,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      gapH32,
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        style: Theme.of(context).textTheme.bodyLarge,
                        decoration: InputDecoration(
                          hintText: AppLocalizations.of(context)!.emailHint,
                          hintStyle: Theme.of(context).textTheme.bodyLarge,
                          border: defaultInputBorder,
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(context)!.emailRequired;
                          } else if (!RegExp(
                                  '^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]')
                              .hasMatch(value)) {
                            return AppLocalizations.of(context)!.emailInvalid;
                          }
                          return null;
                        },
                      ),
                      gapH16,
                      TextFormField(
                        style: Theme.of(context).textTheme.bodyLarge,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _isPasswordVisible,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          hintText: AppLocalizations.of(context)!.passwordHint,
                          hintStyle: Theme.of(context).textTheme.bodyLarge,
                          border: defaultInputBorder,
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            color: Colors.grey,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(context)!
                                .passwordRequired;
                          } else if (value.length < 6) {
                            return AppLocalizations.of(context)!
                                .passwordLengthError;
                          }
                          return null;
                        },
                      ),
                      gapH16,
                      if (_isSignup)
                        TextFormField(
                          style: Theme.of(context).textTheme.bodyLarge,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _confirmPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: _isConfirmPasswordVisible,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: toggleConfirmPasswordVisibility,
                              icon: Icon(
                                _isConfirmPasswordVisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            hintText:
                                AppLocalizations.of(context)!.passwordHint,
                            hintStyle: Theme.of(context).textTheme.bodyLarge,
                            border: defaultInputBorder,
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return AppLocalizations.of(context)!
                                  .confirmPasswordRequired;
                            } else if (value.length < 6) {
                              return AppLocalizations.of(context)!
                                  .passwordLengthError;
                            } else if (value != _passwordController.text) {
                              return AppLocalizations.of(context)!
                                  .passwordsNotMatch;
                            }
                            return null;
                          },
                        ),
                      if (_isSignup) gapH16,
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: FilledButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (_isSignup) {
                                register();
                              } else {
                                login();
                              }
                            }
                          },
                          child: Text(
                            _isSignup
                                ? AppLocalizations.of(context)!.register
                                : AppLocalizations.of(context)!.login,
                          ),
                        ),
                      ),
                      gapH16,
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              _isSignup = !_isSignup;
                            });

                            //AutoRouter.of(context).push(HomeRoute());
                          },
                          child: Text(
                            _isSignup
                                ? AppLocalizations.of(context)!.login
                                : AppLocalizations.of(context)!.register,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    locator<Log>().info("Login button pressed");
    locator<AuthCubit>().login(_emailController.text, _passwordController.text);
  }

  void register() {
    locator<Log>().info("Register button pressed");
    locator<AuthCubit>()
        .register(_emailController.text, _passwordController.text);
  }

  void togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void toggleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    });
  }
}
