import 'package:devbox/models/tool.dart';
import 'package:flutter/material.dart';

class ToolCategoryItem {
  final String name;
  final IconData icon;
  final String title;
  final List<ToolItem> items;

  ToolCategoryItem({
    required this.name,
    required this.icon,
    required this.title,
    required this.items,
  });
}
