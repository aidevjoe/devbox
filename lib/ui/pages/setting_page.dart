import 'package:flutter/material.dart';

import '../../generated/locale_keys.g.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue, child: const Text(LocaleKeys.settings));
  }
}
