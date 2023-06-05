import 'package:devbox/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class JsonYamlConverterPage extends StatelessWidget {
  const JsonYamlConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Text(LocaleKeys.jsonYamlTitle.tr()),
    );
  }
}
