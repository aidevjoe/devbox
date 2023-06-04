import 'package:devbox/utils/extensions/custom_extensions.dart';
import 'package:flutter/material.dart';

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
  ToolCategoryItem getCategorys(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ToolCategoryType.converters:
        return ToolCategoryItem(
          name: 'converters',
          icon: Icons.transform,
          title: l10n.convertersTitle,
          items: [
            // add ToolItem objects for converters
          ],
        );
      case ToolCategoryType.encoderDecoder:
        return ToolCategoryItem(
          name: 'encoderDecoder',
          icon: Icons.code,
          title: l10n.encoderDecoderTitle,
          items: [
            // add ToolItem objects for encoder/decoder
          ],
        );
      case ToolCategoryType.formatter:
        return ToolCategoryItem(
          name: 'formatter',
          icon: Icons.format_align_left,
          title: l10n.formatterTitle,
          items: [
            // add ToolItem objects for formatter
          ],
        );
      case ToolCategoryType.generator:
        return ToolCategoryItem(
          name: 'generator',
          icon: Icons.build,
          title: l10n.generatorTitle,
          items: [
            // add ToolItem objects for generator
          ],
        );
      case ToolCategoryType.text:
        return ToolCategoryItem(
          name: 'text',
          icon: Icons.text_fields,
          title: l10n.textTitle,
          items: [
            // add ToolItem objects for text
          ],
        );
      case ToolCategoryType.graphic:
        return ToolCategoryItem(
          name: 'graphic',
          icon: Icons.brush,
          title: l10n.graphicToolsTitle,
          items: [
            // add ToolItem objects for graphic
          ],
        );
    }
  }
}
