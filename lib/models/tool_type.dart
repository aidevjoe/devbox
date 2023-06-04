import 'package:devbox/ui/modules/formatters/json_formatter_page.dart';
import 'package:devbox/ui/modules/formatters/sql_formatter_page.dart';
import 'package:devbox/ui/modules/formatters/xml_formatter_page.dart';
import 'package:devbox/ui/modules/generators/uuid_page.dart';
import 'package:devbox/utils/extensions/custom_extensions.dart';
import 'package:flutter/material.dart';

import '../ui/modules/converters/cron_parser_page.dart';
import '../ui/modules/converters/json_yaml_converter_page.dart';
import '../ui/modules/converters/number_base_converter_page.dart';
import '../ui/modules/converters/timestamp_converter_page.dart';
import '../ui/modules/encoders/base64_text_image_page.dart';
import '../ui/modules/encoders/gzip_compression_page.dart';
import '../ui/modules/encoders/html_formatter_page.dart';
import '../ui/modules/encoders/jwt_decoder_page.dart';
import '../ui/modules/encoders/url_encoder_decoder_page.dart';
import '../ui/modules/generators/checksum_page.dart';
import '../ui/modules/generators/hash_page.dart';
import '../ui/modules/generators/lorem_Ipsum_page.dart';
import '../ui/modules/graphics/color_blindness_simulator_page.dart';
import '../ui/modules/graphics/color_picker_contrast_page.dart';
import '../ui/modules/graphics/image_compressor_page.dart';
import '../ui/modules/graphics/image_converter_page.dart';
import '../ui/modules/text/escape_unescape_page.dart';
import '../ui/modules/text/inspector_case_converter_page.dart';
import '../ui/modules/text/markdown_preview_page.dart';
import '../ui/modules/text/regex_tester_page.dart';
import '../ui/modules/text/text_comparer_page.dart';
import '../ui/modules/text/xml_validator_page.dart';
import 'tool.dart';

enum ToolType {
  jsonYaml,
  timestamp,
  numberBase,
  cronParser,
  html,
  url,
  base64TextImage,
  gzip,
  jwtDecoder,
  json,
  sql,
  xml,
  hash,
  uuid,
  loremIpsum,
  checksum,
  escapeUnescape,
  inspectorCaseConverter,
  regexTester,
  textComparer,
  xmlValidator,
  markdownPreview,
  colorBlindnessSimulator,
  colorPickerContrast,
  imageCompressor,
  imageConverter
}

extension ToolTypeExtension on ToolType {
  ToolItem getToolItem(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ToolType.jsonYaml:
        return ToolItem(
          name: 'jsonYaml',
          icon: Icons.format_align_left,
          title: l10n.jsonYamlTitle,
          subtitle: l10n.jsonYamlSubtitle,
          description: l10n.jsonYamlDescription,
          page: const JsonYamlConverterPage(),
        );
      case ToolType.timestamp:
        return ToolItem(
          name: 'timestamp',
          icon: Icons.access_time,
          title: l10n.timestampTitle,
          subtitle: l10n.timestampSubtitle,
          description: l10n.timestampDescription,
          page: const TimestampConverterPage(),
        );
      case ToolType.numberBase:
        return ToolItem(
          name: 'numberBase',
          icon: Icons.format_list_numbered,
          title: l10n.numberBaseTitle,
          subtitle: l10n.numberBaseSubtitle,
          description: l10n.numberBaseDescription,
          page: const NumberBaseConverterPage(),
        );
      case ToolType.cronParser:
        return ToolItem(
          name: 'cronParser',
          icon: Icons.schedule,
          title: l10n.cronParserTitle,
          subtitle: l10n.cronParserSubtitle,
          description: l10n.cronParserDescription,
          page: const CronParserPage(),
        );
      // case ConverterType.encoderDecoder:
      //   return ToolItem(
      //     name: 'encoderDecoder',
      //     icon: Icons.code,
      //     title: 'Encoders / Decoders',
      //     subtitle: 'Encode and decode various formats',
      //     description:
      //         'A collection of tools to encode and decode various formats, such as Base64, URL, HTML, and more.',
      //     page: EncoderDecoderPage(),
      //   );
      case ToolType.html:
        return ToolItem(
          name: 'html',
          icon: Icons.language,
          title: l10n.htmlTitle,
          subtitle: l10n.htmlSubtitle,
          description: l10n.htmlDescription,
          page: const HtmlFormatterPage(),
        );
      case ToolType.url:
        return ToolItem(
          name: 'url',
          icon: Icons.link,
          title: l10n.urlTitle,
          subtitle: l10n.urlSubtitle,
          description: l10n.urlDescription,
          page: const UrlEncoderDecoderPage(),
        );
      case ToolType.base64TextImage:
        return ToolItem(
          name: 'base64TextImage',
          icon: Icons.image,
          title: l10n.base64TextImageTitle,
          subtitle: l10n.base64TextImageSubtitle,
          description: l10n.base64TextImageDescription,
          page: const Base64TextImagePage(),
        );
      case ToolType.gzip:
        return ToolItem(
          name: 'gzip',
          icon: Icons.compress,
          title: l10n.gzipTitle,
          subtitle: l10n.gzipSubtitle,
          description: l10n.gzipDescription,
          page: const GzipCompressionPage(),
        );
      case ToolType.jwtDecoder:
        return ToolItem(
          name: 'jwtDecoder',
          icon: Icons.fingerprint,
          title: l10n.jwtDecoderTitle,
          subtitle: l10n.jwtDecoderSubtitle,
          description: l10n.jwtDecoderDescription,
          page: const JWTDecoderPage(),
        );
      // case ConverterType.formatter:
      //   return ToolItem(
      //     name: 'formatter',
      //     icon: Icons.format_shapes,
      //     title: 'Formatters',
      //     subtitle: 'Format various data types',
      //     description:
      //         'A collection of tools to format various data types, such as dates, numbers, and more.',
      //     page: FormatterPage(),
      //   );
      case ToolType.json:
        return ToolItem(
          name: 'json',
          icon: Icons.format_indent_increase,
          title: l10n.jsonTitle,
          subtitle: l10n.jsonSubtitle,
          description: l10n.jsonDescription,
          page: const JSONFormatterPage(),
        );
      case ToolType.sql:
        return ToolItem(
          name: 'sql',
          icon: Icons.table_chart,
          title: l10n.sqlTitle,
          subtitle: l10n.sqlSubtitle,
          description: l10n.sqlDescription,
          page: const SQLFormatterPage(),
        );
      case ToolType.xml:
        return ToolItem(
          name: 'xml',
          icon: Icons.code,
          title: l10n.xmlTitle,
          subtitle: l10n.xmlSubtitle,
          description: l10n.xmlDescription,
          page: const XMLFormatterPage(),
        );
      // case ConverterType.generator:
      //   return ToolItem(
      //     name: 'generator',
      //     icon: Icons.add_box,
      //     title: 'Generators',
      //     subtitle: 'Generate random data',
      //     description:
      //         'A collection of tools to generate random data, such as passwords, UUIDs, and more.',
      //     page: GeneratorPage(),
      //   );
      case ToolType.hash:
        return ToolItem(
          name: 'hash',
          icon: Icons.lock,
          title: l10n.hashTitle,
          subtitle: l10n.hashSubtitle,
          description: l10n.hashDescription,
          page: const HashPage(),
        );
      case ToolType.uuid:
        return ToolItem(
          name: 'uuid',
          icon: Icons.fiber_manual_record,
          title: l10n.uuidTitle,
          subtitle: l10n.uuidSubtitle,
          description: l10n.uuidDescription,
          page: const UUIDPage(),
        );
      case ToolType.loremIpsum:
        return ToolItem(
          name: 'loremIpsum',
          icon: Icons.text_fields,
          title: l10n.loremIpsumTitle,
          subtitle: l10n.loremIpsumSubtitle,
          description: l10n.loremIpsumDescription,
          page: const LoremIpsumPage(),
        );
      case ToolType.checksum:
        return ToolItem(
          name: 'checksum',
          icon: Icons.check_circle_outline,
          title: l10n.checksumTitle,
          subtitle: l10n.checksumSubtitle,
          description: l10n.checksumSubtitle,
          page: const ChecksumPage(),
        );
      // case ConverterType.text:
      //   return ToolItem(
      //     name: 'text',
      //     icon: Icons.text_fields,
      //     title: 'Text Manipulation',
      //     subtitle: 'Manipulate text data',
      //     description:
      //         'A collection of tools to manipulate text data, such as sorting, filtering, and more.',
      //     page: TextManipulationPage(),
      //   );
      case ToolType.escapeUnescape:
        return ToolItem(
          name: 'escapeUnescape',
          icon: Icons.format_quote,
          title: l10n.escapeUnescapeTitle,
          subtitle: l10n.escapeUnescapeSubtitle,
          description: l10n.escapeUnescapeDescription,
          page: const EscapeUnescapePage(),
        );
      case ToolType.inspectorCaseConverter:
        return ToolItem(
          name: 'inspectorCaseConverter',
          icon: Icons.help_outline,
          title: l10n.inspectorCaseConverterTitle,
          subtitle: l10n.inspectorCaseConverterSubtitle,
          description: l10n.inspectorCaseConverterDescription,
          page: const InspectorCaseConverterPage(),
        );
      case ToolType.regexTester:
        return ToolItem(
          name: 'regexTester',
          icon: Icons.search,
          title: l10n.regexTesterTitle,
          subtitle: l10n.regexTesterSubtitle,
          description: l10n.regexTesterDescription,
          page: const RegexTesterPage(),
        );
      case ToolType.textComparer:
        return ToolItem(
          name: 'textComparer',
          icon: Icons.compare,
          title: l10n.textComparerTitle,
          subtitle: l10n.textComparerSubtitle,
          description: l10n.textComparerDescription,
          page: const TextComparerPage(),
        );
      case ToolType.xmlValidator:
        return ToolItem(
          name: 'xmlValidator',
          icon: Icons.check_circle_outline,
          title: l10n.xmlValidatorTitle,
          subtitle: l10n.xmlValidatorSubtitle,
          description: l10n.xmlValidatorDescription,
          page: const XMLValidatorPage(),
        );
      case ToolType.markdownPreview:
        return ToolItem(
          name: 'markdownPreview',
          icon: Icons.abc,
          title: l10n.markdownPreviewTitle,
          subtitle: l10n.markdownPreviewSubtitle,
          description: l10n.markdownPreviewDescription,
          page: const MarkdownPreviewPage(),
        );
      // case ConverterType.graphic:
      //   return ToolItem(
      //     name: 'graphic',
      //     icon: Icons.brush,
      //     title: 'Graphic Tools',
      //     subtitle: 'Manipulate graphic data',
      //     description:
      //         'A collection of tools to manipulate graphic data, such as color blindness simulator, color picker, and more.',
      //     page: GraphicToolsPage(),
      //   );
      case ToolType.colorBlindnessSimulator:
        return ToolItem(
          name: 'colorBlindnessSimulator',
          icon: Icons.remove_red_eye,
          title: l10n.colorBlindnessTitle,
          subtitle: l10n.colorBlindnessSubtitle,
          description: l10n.colorBlindnessDescription,
          page: const ColorBlindnessSimulatorPage(),
        );
      case ToolType.colorPickerContrast:
        return ToolItem(
          name: 'colorPickerContrast',
          icon: Icons.color_lens,
          title: l10n.colorPickerTitle,
          subtitle: l10n.colorPickerSubtitle,
          description: l10n.colorPickerDescription,
          page: const ColorPickerContrastPage(),
        );
      case ToolType.imageCompressor:
        return ToolItem(
          name: 'imageCompressor',
          icon: Icons.photo,
          title: l10n.imageCompressorTitle,
          subtitle: l10n.imageCompressorSubtitle,
          description: l10n.imageCompressorDescription,
          page: const ImageCompressorPage(),
        );
      case ToolType.imageConverter:
        return ToolItem(
          name: 'imageConverter',
          icon: Icons.photo_size_select_large,
          title: l10n.imageConverterTitle,
          subtitle: l10n.imageConverterSubtitle,
          description: l10n.imageConverterDescription,
          page: const ImageConverterPage(),
        );
    }
  }
}
