import 'package:devbox/utils/extensions/custom_extensions.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.amber, child: Text(context.l10n.favorites));
  }
}
