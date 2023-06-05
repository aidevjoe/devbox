import 'package:devbox/models/tool_type.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';
import 'tool_category.dart';

enum ToolCategoryType {
  converters,
  encoderDecoder,
  formatter,
  generator,
  text,
  graphic
}

extension ToolCategoryTypeExtension on ToolCategoryType {
  ToolCategoryItem get getCategorys {
    switch (this) {
      case ToolCategoryType.converters:
        return ToolCategoryItem(
          name: 'converters',
          icon: Icons.transform,
          title: LocaleKeys.convertersTitle.tr(),
          items: [
            ToolType.jsonYaml,
            ToolType.timestamp,
            ToolType.numberBase,
            ToolType.cronParser,
            ToolType.html
          ].map((e) => e.getToolItem).toList(),
        );
      case ToolCategoryType.encoderDecoder:
        return ToolCategoryItem(
          name: 'encoderDecoder',
          icon: Icons.code,
          title: LocaleKeys.encoderDecoderTitle.tr(),
          items: [
            ToolType.url,
            ToolType.base64TextImage,
            ToolType.gzip,
            ToolType.jwtDecoder,
          ].map((e) => e.getToolItem).toList(),
        );
      case ToolCategoryType.formatter:
        return ToolCategoryItem(
          name: 'formatter',
          icon: Icons.format_align_left,
          title: LocaleKeys.formatterTitle.tr(),
          items: [
            ToolType.json,
            ToolType.sql,
            ToolType.xml,
          ].map((e) => e.getToolItem).toList(),
        );
      case ToolCategoryType.generator:
        return ToolCategoryItem(
          name: 'generator',
          icon: Icons.build,
          title: LocaleKeys.generatorTitle.tr(),
          items: [
            ToolType.hash,
            ToolType.uuid,
            ToolType.loremIpsum,
          ].map((e) => e.getToolItem).toList(),
        );
      case ToolCategoryType.text:
        return ToolCategoryItem(
          name: 'text',
          icon: Icons.text_fields,
          title: LocaleKeys.textTitle.tr(),
          items: [
            // add ToolItem objects for text
          ],
        );
      case ToolCategoryType.graphic:
        return ToolCategoryItem(
          name: 'graphic',
          icon: Icons.brush,
          title: LocaleKeys.graphicToolsTitle.tr(),
          items: [
            // add ToolItem objects for graphic
          ],
        );
    }
  }
}
