import 'package:devbox/devbox.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'providers/global_providers.dart';
import 'utils/state_logger.dart';
import 'generated/codegen_loader.g.dart';

// flutter pub run easy_localization:generate --source-dir assets/translations
// flutter pub run easy_localization:generate -S assets/translations -f keys -o locale_keys.g.dart

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  final packageInfo = await PackageInfo.fromPlatform();

  runApp(
    EasyLocalization(
        assetLoader: const CodegenLoader(),
        supportedLocales: const [Locale('en'), Locale('zh')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        // saveLocale: false,
        useOnlyLangCode: true,
        child: ProviderScope(overrides: [
          sharedPreferencesProvider.overrideWithValue(sharedPreferences),
          packageInfoProvider.overrideWithValue(packageInfo),
        ], observers: const [
          SateLogger()
        ], child: const Devbox())),
  );
}
