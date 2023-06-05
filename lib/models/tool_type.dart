import 'package:devbox/ui/modules/formatters/json_formatter_page.dart';
import 'package:devbox/ui/modules/formatters/sql_formatter_page.dart';
import 'package:devbox/ui/modules/formatters/xml_formatter_page.dart';
import 'package:devbox/ui/modules/generators/uuid_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../generated/locale_keys.g.dart';
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
  ToolItem get getToolItem {
    switch (this) {
      case ToolType.jsonYaml:
        return ToolItem(
          name: '/jsonYaml',
          icon: Icons.format_align_left,
          title: LocaleKeys.jsonYamlTitle.tr(),
          subtitle: LocaleKeys.jsonYamlSubtitle.tr(),
          description: LocaleKeys.jsonYamlDescription.tr(),
          page: const JsonYamlConverterPage(),
        );
      case ToolType.timestamp:
        return ToolItem(
          name: '/timestamp',
          icon: Icons.access_time,
          title: LocaleKeys.timestampTitle.tr(),
          subtitle: LocaleKeys.timestampSubtitle.tr(),
          description: LocaleKeys.timestampDescription.tr(),
          page: const TimestampConverterPage(),
        );
      case ToolType.numberBase:
        return ToolItem(
          name: '/numberBase',
          icon: Icons.format_list_numbered,
          title: LocaleKeys.numberBaseTitle.tr(),
          subtitle: LocaleKeys.numberBaseSubtitle.tr(),
          description: LocaleKeys.numberBaseDescription.tr(),
          page: const NumberBaseConverterPage(),
        );
      case ToolType.cronParser:
        return ToolItem(
          name: '/cronParser',
          icon: Icons.schedule,
          title: LocaleKeys.cronParserTitle.tr(),
          subtitle: LocaleKeys.cronParserSubtitle.tr(),
          description: LocaleKeys.cronParserDescription.tr(),
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
          name: '/html',
          icon: Icons.language,
          title: LocaleKeys.htmlTitle.tr(),
          subtitle: LocaleKeys.htmlSubtitle.tr(),
          description: LocaleKeys.htmlDescription.tr(),
          page: const HtmlFormatterPage(),
        );
      case ToolType.url:
        return ToolItem(
          name: '/url',
          icon: Icons.link,
          title: LocaleKeys.urlTitle.tr(),
          subtitle: LocaleKeys.urlSubtitle.tr(),
          description: LocaleKeys.urlDescription.tr(),
          page: const UrlEncoderDecoderPage(),
        );
      case ToolType.base64TextImage:
        return ToolItem(
          name: '/base64TextImage',
          icon: Icons.image,
          title: LocaleKeys.base64TextImageTitle.tr(),
          subtitle: LocaleKeys.base64TextImageSubtitle.tr(),
          description: LocaleKeys.base64TextImageDescription.tr(),
          page: const Base64TextImagePage(),
        );
      case ToolType.gzip:
        return ToolItem(
          name: '/gzip',
          icon: Icons.compress,
          title: LocaleKeys.gzipTitle.tr(),
          subtitle: LocaleKeys.gzipSubtitle.tr(),
          description: LocaleKeys.gzipDescription.tr(),
          page: const GzipCompressionPage(),
        );
      case ToolType.jwtDecoder:
        return ToolItem(
          name: '/jwtDecoder',
          icon: Icons.fingerprint,
          title: LocaleKeys.jwtDecoderTitle.tr(),
          subtitle: LocaleKeys.jwtDecoderSubtitle.tr(),
          description: LocaleKeys.jwtDecoderDescription.tr(),
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
          name: '/json',
          icon: Icons.format_indent_increase,
          title: LocaleKeys.jsonTitle.tr(),
          subtitle: LocaleKeys.jsonSubtitle.tr(),
          description: LocaleKeys.jsonDescription.tr(),
          page: const JSONFormatterPage(),
        );
      case ToolType.sql:
        return ToolItem(
          name: '/sql',
          icon: Icons.table_chart,
          title: LocaleKeys.sqlTitle.tr(),
          subtitle: LocaleKeys.sqlSubtitle.tr(),
          description: LocaleKeys.sqlDescription.tr(),
          page: const SQLFormatterPage(),
        );
      case ToolType.xml:
        return ToolItem(
          name: '/xml',
          icon: Icons.code,
          title: LocaleKeys.xmlTitle.tr(),
          subtitle: LocaleKeys.xmlSubtitle.tr(),
          description: LocaleKeys.xmlDescription.tr(),
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
          name: '/hash',
          icon: Icons.lock,
          title: LocaleKeys.hashTitle.tr(),
          subtitle: LocaleKeys.hashSubtitle.tr(),
          description: LocaleKeys.hashDescription.tr(),
          page: const HashPage(),
        );
      case ToolType.uuid:
        return ToolItem(
          name: '/uuid',
          icon: Icons.fiber_manual_record,
          title: LocaleKeys.uuidTitle.tr(),
          subtitle: LocaleKeys.uuidSubtitle.tr(),
          description: LocaleKeys.uuidDescription.tr(),
          page: const UUIDPage(),
        );
      case ToolType.loremIpsum:
        return ToolItem(
          name: '/loremIpsum',
          icon: Icons.text_fields,
          title: LocaleKeys.loremIpsumTitle.tr(),
          subtitle: LocaleKeys.loremIpsumSubtitle.tr(),
          description: LocaleKeys.loremIpsumDescription.tr(),
          page: const LoremIpsumPage(),
        );
      case ToolType.checksum:
        return ToolItem(
          name: '/checksum',
          icon: Icons.check_circle_outline,
          title: LocaleKeys.checksumTitle.tr(),
          subtitle: LocaleKeys.checksumSubtitle.tr(),
          description: LocaleKeys.checksumSubtitle.tr(),
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
          name: '/escapeUnescape',
          icon: Icons.format_quote,
          title: LocaleKeys.escapeUnescapeTitle.tr(),
          subtitle: LocaleKeys.escapeUnescapeSubtitle.tr(),
          description: LocaleKeys.escapeUnescapeDescription.tr(),
          page: const EscapeUnescapePage(),
        );
      case ToolType.inspectorCaseConverter:
        return ToolItem(
          name: '/inspectorCaseConverter',
          icon: Icons.help_outline,
          title: LocaleKeys.inspectorCaseConverterTitle.tr(),
          subtitle: LocaleKeys.inspectorCaseConverterSubtitle.tr(),
          description: LocaleKeys.inspectorCaseConverterDescription.tr(),
          page: const InspectorCaseConverterPage(),
        );
      case ToolType.regexTester:
        return ToolItem(
          name: '/regexTester',
          icon: Icons.search,
          title: LocaleKeys.regexTesterTitle.tr(),
          subtitle: LocaleKeys.regexTesterSubtitle.tr(),
          description: LocaleKeys.regexTesterDescription.tr(),
          page: const RegexTesterPage(),
        );
      case ToolType.textComparer:
        return ToolItem(
          name: '/textComparer',
          icon: Icons.compare,
          title: LocaleKeys.textComparerTitle.tr(),
          subtitle: LocaleKeys.textComparerSubtitle.tr(),
          description: LocaleKeys.textComparerDescription.tr(),
          page: const TextComparerPage(),
        );
      case ToolType.xmlValidator:
        return ToolItem(
          name: '/xmlValidator',
          icon: Icons.check_circle_outline,
          title: LocaleKeys.xmlValidatorTitle.tr(),
          subtitle: LocaleKeys.xmlValidatorSubtitle.tr(),
          description: LocaleKeys.xmlValidatorDescription.tr(),
          page: const XMLValidatorPage(),
        );
      case ToolType.markdownPreview:
        return ToolItem(
          name: '/markdownPreview',
          icon: Icons.abc,
          title: LocaleKeys.markdownPreviewTitle.tr(),
          subtitle: LocaleKeys.markdownPreviewSubtitle.tr(),
          description: LocaleKeys.markdownPreviewDescription.tr(),
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
          name: '/colorBlindnessSimulator',
          icon: Icons.remove_red_eye,
          title: LocaleKeys.colorBlindnessTitle.tr(),
          subtitle: LocaleKeys.colorBlindnessSubtitle.tr(),
          description: LocaleKeys.colorBlindnessDescription.tr(),
          page: const ColorBlindnessSimulatorPage(),
        );
      case ToolType.colorPickerContrast:
        return ToolItem(
          name: '/colorPickerContrast',
          icon: Icons.color_lens,
          title: LocaleKeys.colorPickerTitle.tr(),
          subtitle: LocaleKeys.colorPickerSubtitle.tr(),
          description: LocaleKeys.colorPickerDescription.tr(),
          page: const ColorPickerContrastPage(),
        );
      case ToolType.imageCompressor:
        return ToolItem(
          name: '/imageCompressor',
          icon: Icons.photo,
          title: LocaleKeys.imageCompressorTitle.tr(),
          subtitle: LocaleKeys.imageCompressorSubtitle.tr(),
          description: LocaleKeys.imageCompressorDescription.tr(),
          page: const ImageCompressorPage(),
        );
      case ToolType.imageConverter:
        return ToolItem(
          name: '/imageConverter',
          icon: Icons.photo_size_select_large,
          title: LocaleKeys.imageConverterTitle.tr(),
          subtitle: LocaleKeys.imageConverterSubtitle.tr(),
          description: LocaleKeys.imageConverterDescription.tr(),
          page: const ImageConverterPage(),
        );
    }
  }
}
