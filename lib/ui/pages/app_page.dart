import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../generated/locale_keys.g.dart';
import '../../models/tool_category_type.dart';
import '../../router/routers.dart';

class AppPage extends ConsumerStatefulWidget {
  const AppPage(this.contentView, {super.key});
  final Widget contentView;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppPageState();
}

class _AppPageState extends ConsumerState<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        SizedBox(
          width: 250,
          child: Column(
            children: [
              Expanded(
                child: ListView(children: [
                  InkWell(
                    onTap: () => GoRouter.of(context).go(HomeRoute.path),
                    child: ListTile(
                      leading: const Icon(Icons.home),
                      title: Text(LocaleKeys.all.tr()),
                    ),
                  ),

                  InkWell(
                    onTap: () => GoRouter.of(context).go(FavoriteRoute.path),
                    child: ListTile(
                      leading: const Icon(Icons.favorite),
                      title: Text(LocaleKeys.favorites.tr()),
                    ),
                  ),
                  ...ToolCategoryType.values
                      .map((e) => e.getCategorys)
                      .map((e) => ExpansionTile(
                            title: Text(e.title),
                            leading: Icon(e.icon),
                            children: e.items
                                .map((e) => InkWell(
                                      onTap: () =>
                                          GoRouter.of(context).go(e.name),
                                      child: ListTile(
                                        title: Text(e.title),
                                      ),
                                    ))
                                .toList(),
                          ))
                      .toList(),
                  // SidebarItem(
                  //   title: context.l10n.favorites,
                  //   path: FavoriteRoute.path,
                  // ),
                ]),
              ),
              InkWell(
                onTap: () => GoRouter.of(context).go(SettingRoute.path),
                child: ListTile(
                  leading: const Icon(Icons.settings),
                  title: Text(LocaleKeys.settings.tr()),
                ),
              )
            ],
          ),
        ),
        const VerticalDivider(
          width: 1,
        ),
        Expanded(
          child: Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              body: widget.contentView),
        )
      ],
    ));
  }
}
