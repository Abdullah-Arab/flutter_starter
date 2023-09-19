import '/src/constants/gaps.dart';
import '/src/constants/paddings.dart';
import '/src/constants/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: padding32,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/empty.png",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            gap32,
            Text(
              AppLocalizations.of(context)!.empty,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: primaryColor,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
