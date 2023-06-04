import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'global_providers.g.dart';

@riverpod
SharedPreferences sharedPreferences(ref) => throw UnimplementedError();

@riverpod
PackageInfo packageInfo(ref) => throw UnimplementedError();
