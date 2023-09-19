import '/src/constants/themes.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '/src/constants/gaps.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoadingAnimationWidget.stretchedDots(color: primaryColor, size: 64),
          gap16,
          Text(
            AppLocalizations.of(context)!.loading,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
