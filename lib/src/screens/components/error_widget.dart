import '/src/constants/gaps.dart';
import '/src/constants/paddings.dart';
import '/src/data/models/exceptions/restapi_exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../constants/themes.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget(
      {super.key, required this.message, required this.onRetry});
  final RestApiException message;
  final Function onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: primaryGradient,
      ),
      child: Padding(
        padding: padding32,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(
            //   message.statusCode,
            //   style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            //         color: primaryColor,
            //       ),
            //   textAlign: TextAlign.center,
            // ),
            // gap16,
            Text(
              AppLocalizations.of(context)!.error,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: primaryColor,
                  ),
            ),
            gap16,
            Text(
              message.message,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            gap32,
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => onRetry(),
                child: Text(AppLocalizations.of(context)!.retry),
              ),
            )
          ],
        ),
      ),
    );
  }
}
