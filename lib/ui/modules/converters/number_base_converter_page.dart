import 'package:devbox/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NumberBaseConverterPage extends StatelessWidget {
  const NumberBaseConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Text(LocaleKeys.numberBaseTitle.tr()),
    );
  }
}
