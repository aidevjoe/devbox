import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/languages/json.dart';
import 'package:highlight/languages/yaml.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';

class JsonYamlConverterPage extends StatefulWidget {
  const JsonYamlConverterPage({super.key});

  @override
  State<JsonYamlConverterPage> createState() => _JsonYamlConverterPageState();
}

class _JsonYamlConverterPageState extends State<JsonYamlConverterPage> {
  CodeController jsonController = CodeController(language: json);
  CodeController yamlController = CodeController(language: yaml);

  @override
  Widget build(BuildContext context) {
    return CodeTheme(
        data: CodeThemeData(styles: monokaiSublimeTheme),
        child: Row(children: [
          Expanded(
            child: CodeField(
                gutterStyle: const GutterStyle(showErrors: true),
                controller: jsonController,
                expands: true),
          ),
          Expanded(
            child: CodeField(
              gutterStyle: const GutterStyle(showErrors: true),
              controller: yamlController,
              expands: true,
            ),
          )
        ]));
  }
}
