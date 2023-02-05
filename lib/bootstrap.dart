import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/logging/logger.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  GoogleFonts.config.allowRuntimeFetching = false;
  FlutterError.onError = (FlutterErrorDetails details) {
    logger.e(details.exceptionAsString(), details.exception, details.stack);
  };
  _addFontsLicenses();
  await runZonedGuarded(
    () async => runApp(await builder()),
    (Object error, StackTrace stackTrace) =>
        logger.e(error.toString(), error, stackTrace),
  );
}

void _addFontsLicenses() {
  LicenseRegistry.addLicense(() async* {
    final robotoLicense =
        await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], robotoLicense);
  });
}
