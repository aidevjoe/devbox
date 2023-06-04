import 'package:devbox/utils/extensions/custom_extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../router/routers.dart';

class AppPage extends ConsumerWidget {
  const AppPage({super.key, required this.contentView});

  final Widget contentView;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Row(
      children: [
        Column(
          children: [
            const CategoryWidget(
              title: 'Home',
              path: HomeRoute.path,
            ),
            CategoryWidget(
              title: context.l10n.favorites,
              path: FavoriteRoute.path,
            ),
            CategoryWidget(
              title: context.l10n.settings,
              path: SettingRoute.path,
            ),
          ],
        ),
        const VerticalDivider(
          width: 1,
        ),
        Expanded(
          child: Scaffold(body: contentView),
        )
      ],
    ));
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.title, required this.path});

  final String title;
  final String path;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => GoRouter.of(context).go(path), child: Text(title));
  }
}
