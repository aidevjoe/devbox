import 'package:devbox/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TimestampConverterPage extends StatelessWidget {
  const TimestampConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Text(LocaleKeys.timestampTitle.tr()),
    );
  }
}
