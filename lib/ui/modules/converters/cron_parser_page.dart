import 'package:devbox/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CronParserPage extends StatelessWidget {
  const CronParserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Text(LocaleKeys.cronParserTitle.tr()),
    );
  }
}
